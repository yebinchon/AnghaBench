; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/security/extr_rfi_flush.c_rfi_flush_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/security/extr_rfi_flush.c_rfi_flush_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_read = type { i64 }

@.str = private unnamed_addr constant [18 x i8] c"powerpc/rfi_flush\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Unable to read powerpc/rfi_flush debugfs file\00", align 1
@PERF_TYPE_RAW = common dso_local global i32 0, align 4
@CACHELINE_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [67 x i8] c"FAIL (L1D misses with rfi_flush=%d: %llu %c %lu) [%d/%d failures]\0A\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"PASS (L1D misses with rfi_flush=%d: %llu %c %lu) [%d/%d pass]\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"error writing to powerpc/rfi_flush debugfs file\00", align 1
@.str.5 = private unnamed_addr constant [67 x i8] c"unable to restore original value of powerpc/rfi_flush debugfs file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rfi_flush_test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.perf_event_read, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 10, i32* %3, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i64 0, i64* %9, align 8
  store i64 100000, i64* %10, align 8
  store i64 24576, i64* %11, align 8
  %15 = call i64 (...) @geteuid()
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @SKIP_IF(i32 %17)
  %19 = call i64 @read_debugfs_file(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %13)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %0
  %22 = call i32 @perror(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 @SKIP_IF(i32 1)
  br label %24

24:                                               ; preds = %21, %0
  %25 = load i32, i32* %13, align 4
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* @PERF_TYPE_RAW, align 4
  %27 = call i32 @perf_event_open_counter(i32 %26, i32 262384, i32 -1)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @FAIL_IF(i32 %30)
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* @CACHELINE_SIZE, align 8
  %34 = call i64 @memalign(i64 %32, i64 %33)
  %35 = inttoptr i64 %34 to i8*
  store i8* %35, i8** %2, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @perf_event_enable(i32 %36)
  %38 = call i32 @FAIL_IF(i32 %37)
  %39 = call i32 @set_dscr(i32 1)
  %40 = load i32, i32* %3, align 4
  store i32 %40, i32* %6, align 4
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* @CACHELINE_SIZE, align 8
  %44 = udiv i64 %42, %43
  %45 = sub i64 %44, 2
  %46 = mul i64 %41, %45
  store i64 %46, i64* %12, align 8
  br label %47

47:                                               ; preds = %168, %93, %24
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @perf_event_reset(i32 %48)
  %50 = call i32 @FAIL_IF(i32 %49)
  %51 = load i8*, i8** %2, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* %11, align 8
  %54 = call i32 @syscall_loop(i8* %51, i64 %52, i64 %53)
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @read(i32 %55, %struct.perf_event_read* %8, i32 8)
  %57 = sext i32 %56 to i64
  %58 = icmp ne i64 %57, 8
  %59 = zext i1 %58 to i32
  %60 = call i32 @FAIL_IF(i32 %59)
  %61 = load i32, i32* %14, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %47
  %64 = getelementptr inbounds %struct.perf_event_read, %struct.perf_event_read* %8, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %12, align 8
  %67 = icmp uge i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %84

71:                                               ; preds = %63, %47
  %72 = load i32, i32* %14, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %83, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.perf_event_read, %struct.perf_event_read* %8, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %12, align 8
  %78 = udiv i64 %77, 2
  %79 = icmp ult i64 %76, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %80, %74, %71
  br label %84

84:                                               ; preds = %83, %68
  %85 = getelementptr inbounds %struct.perf_event_read, %struct.perf_event_read* %8, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %9, align 8
  %88 = add i64 %87, %86
  store i64 %88, i64* %9, align 8
  br label %89

89:                                               ; preds = %84
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  br label %47

94:                                               ; preds = %89
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* %3, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %127

98:                                               ; preds = %94
  %99 = load i32, i32* %14, align 4
  %100 = load i64, i64* %9, align 8
  %101 = load i32, i32* %14, align 4
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 60, i32 62
  %105 = trunc i32 %104 to i8
  %106 = load i32, i32* %14, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %98
  %109 = load i32, i32* %3, align 4
  %110 = sext i32 %109 to i64
  %111 = load i64, i64* %12, align 8
  %112 = mul i64 %110, %111
  br label %119

113:                                              ; preds = %98
  %114 = load i32, i32* %3, align 4
  %115 = sext i32 %114 to i64
  %116 = load i64, i64* %12, align 8
  %117 = mul i64 %115, %116
  %118 = udiv i64 %117, 2
  br label %119

119:                                              ; preds = %113, %108
  %120 = phi i64 [ %112, %108 ], [ %118, %113 ]
  %121 = trunc i64 %120 to i32
  %122 = load i32, i32* %3, align 4
  %123 = load i32, i32* %5, align 4
  %124 = sub nsw i32 %122, %123
  %125 = load i32, i32* %3, align 4
  %126 = call i32 @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 %99, i64 %100, i8 signext %105, i32 %121, i32 %124, i32 %125)
  store i32 1, i32* %7, align 4
  br label %154

127:                                              ; preds = %94
  %128 = load i32, i32* %14, align 4
  %129 = load i64, i64* %9, align 8
  %130 = load i32, i32* %14, align 4
  %131 = icmp ne i32 %130, 0
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i32 62, i32 60
  %134 = trunc i32 %133 to i8
  %135 = load i32, i32* %14, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %127
  %138 = load i32, i32* %3, align 4
  %139 = sext i32 %138 to i64
  %140 = load i64, i64* %12, align 8
  %141 = mul i64 %139, %140
  br label %148

142:                                              ; preds = %127
  %143 = load i32, i32* %3, align 4
  %144 = sext i32 %143 to i64
  %145 = load i64, i64* %12, align 8
  %146 = mul i64 %144, %145
  %147 = udiv i64 %146, 2
  br label %148

148:                                              ; preds = %142, %137
  %149 = phi i64 [ %141, %137 ], [ %147, %142 ]
  %150 = trunc i64 %149 to i32
  %151 = load i32, i32* %5, align 4
  %152 = load i32, i32* %3, align 4
  %153 = call i32 @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %128, i64 %129, i8 signext %134, i32 %150, i32 %151, i32 %152)
  br label %154

154:                                              ; preds = %148, %119
  %155 = load i32, i32* %14, align 4
  %156 = load i32, i32* %13, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %170

158:                                              ; preds = %154
  %159 = load i32, i32* %13, align 4
  %160 = icmp ne i32 %159, 0
  %161 = xor i1 %160, true
  %162 = zext i1 %161 to i32
  store i32 %162, i32* %14, align 4
  %163 = load i32, i32* %14, align 4
  %164 = call i64 @write_debugfs_file(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %163)
  %165 = icmp slt i64 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %158
  %167 = call i32 @perror(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %183

168:                                              ; preds = %158
  %169 = load i32, i32* %3, align 4
  store i32 %169, i32* %6, align 4
  store i64 0, i64* %9, align 8
  store i32 0, i32* %5, align 4
  br label %47

170:                                              ; preds = %154
  %171 = load i32, i32* %4, align 4
  %172 = call i32 @perf_event_disable(i32 %171)
  %173 = load i32, i32* %4, align 4
  %174 = call i32 @close(i32 %173)
  %175 = call i32 @set_dscr(i32 0)
  %176 = load i32, i32* %13, align 4
  %177 = call i64 @write_debugfs_file(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %176)
  %178 = icmp slt i64 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %170
  %180 = call i32 @perror(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %183

181:                                              ; preds = %170
  %182 = load i32, i32* %7, align 4
  store i32 %182, i32* %1, align 4
  br label %183

183:                                              ; preds = %181, %179, %166
  %184 = load i32, i32* %1, align 4
  ret i32 %184
}

declare dso_local i32 @SKIP_IF(i32) #1

declare dso_local i64 @geteuid(...) #1

declare dso_local i64 @read_debugfs_file(i8*, i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @perf_event_open_counter(i32, i32, i32) #1

declare dso_local i32 @FAIL_IF(i32) #1

declare dso_local i64 @memalign(i64, i64) #1

declare dso_local i32 @perf_event_enable(i32) #1

declare dso_local i32 @set_dscr(i32) #1

declare dso_local i32 @perf_event_reset(i32) #1

declare dso_local i32 @syscall_loop(i8*, i64, i64) #1

declare dso_local i32 @read(i32, %struct.perf_event_read*, i32) #1

declare dso_local i32 @printf(i8*, i32, i64, i8 signext, i32, i32, i32) #1

declare dso_local i64 @write_debugfs_file(i8*, i32) #1

declare dso_local i32 @perf_event_disable(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
