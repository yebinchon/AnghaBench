; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_core-pkey.c_parent.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_core-pkey.c_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shared_info = type { i64, i64, i64, i32 }

@NT_PPC_PKEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Child's exit status not captured\0A\00", align 1
@TEST_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Child didn't dump core\0A\00", align 1
@PATH_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Error allocating memory\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"core-pkey.%d\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"core.%d\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Couldn't find core file\0A\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"Error opening core file\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"Error mmaping core file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shared_info*, i32)* @parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parent(%struct.shared_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.shared_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [3 x i8*], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [3 x i64], align 16
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.shared_info* %0, %struct.shared_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @NT_PPC_PKEY, align 4
  %17 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 0
  %18 = call i32 @ptrace_read_regs(i32 %15, i32 %16, i64* %17, i32 3)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %21 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %20, i32 0, i32 3
  %22 = call i32 @PARENT_SKIP_IF_UNSUPPORTED(i32 %19, i32* %21)
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %25 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %24, i32 0, i32 3
  %26 = call i32 @PARENT_FAIL_IF(i32 %23, i32* %25)
  %27 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 0
  %28 = load i64, i64* %27, align 16
  %29 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %30 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %34 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  %35 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 2
  %36 = load i64, i64* %35, align 16
  %37 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %38 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %37, i32 0, i32 2
  store i64 %36, i64* %38, align 8
  %39 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %40 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %39, i32 0, i32 3
  %41 = call i32 @prod_child(i32* %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %44 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %43, i32 0, i32 3
  %45 = call i32 @PARENT_FAIL_IF(i32 %42, i32* %44)
  %46 = call i32 @wait(i32* %11)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %2
  %51 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @TEST_FAIL, align 4
  store i32 %52, i32* %3, align 4
  br label %184

53:                                               ; preds = %2
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @WIFSIGNALED(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @WCOREDUMP(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %57, %53
  %62 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* @TEST_FAIL, align 4
  store i32 %63, i32* %3, align 4
  br label %184

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* @PATH_MAX, align 4
  %67 = call i8* @malloc(i32 %66)
  store i8* %67, i8** %6, align 8
  %68 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 0
  store i8* %67, i8** %68, align 16
  %69 = load i8*, i8** %6, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %65
  %72 = call i32 @perror(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i32, i32* @TEST_FAIL, align 4
  store i32 %73, i32* %3, align 4
  br label %184

74:                                               ; preds = %65
  %75 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 0
  %76 = load i8*, i8** %75, align 16
  %77 = load i32, i32* @PATH_MAX, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @snprintf(i8* %76, i32 %77, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %74
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @PATH_MAX, align 4
  %85 = icmp sge i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %82, %74
  %87 = load i32, i32* @TEST_FAIL, align 4
  store i32 %87, i32* %10, align 4
  br label %180

88:                                               ; preds = %82
  %89 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 0
  %90 = load i8*, i8** %89, align 16
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  %95 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 1
  store i8* %94, i8** %95, align 8
  %96 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 1
  %97 = load i8*, i8** %96, align 8
  %98 = load i32, i32* @PATH_MAX, align 4
  %99 = load i32, i32* %10, align 4
  %100 = sub nsw i32 %98, %99
  %101 = sub nsw i32 %100, 1
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @snprintf(i8* %97, i32 %101, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %102)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %113, label %106

106:                                              ; preds = %88
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @PATH_MAX, align 4
  %109 = load i32, i32* %10, align 4
  %110 = sub nsw i32 %108, %109
  %111 = sub nsw i32 %110, 1
  %112 = icmp sge i32 %107, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %106, %88
  %114 = load i32, i32* @TEST_FAIL, align 4
  store i32 %114, i32* %10, align 4
  br label %180

115:                                              ; preds = %106
  %116 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %116, align 16
  store i32 0, i32* %9, align 4
  br label %117

117:                                              ; preds = %133, %115
  %118 = load i32, i32* %9, align 4
  %119 = icmp slt i32 %118, 3
  br i1 %119, label %120, label %136

120:                                              ; preds = %117
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 %122
  %124 = load i8*, i8** %123, align 8
  %125 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @try_core_file(i8* %124, %struct.shared_info* %125, i32 %126)
  store i32 %127, i32* %13, align 4
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* @TEST_FAIL, align 4
  %130 = icmp ne i32 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %120
  br label %136

132:                                              ; preds = %120
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %9, align 4
  br label %117

136:                                              ; preds = %131, %117
  %137 = load i32, i32* %9, align 4
  %138 = icmp eq i32 %137, 3
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %141 = load i32, i32* @TEST_FAIL, align 4
  store i32 %141, i32* %10, align 4
  br label %180

142:                                              ; preds = %136
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 %144
  %146 = load i8*, i8** %145, align 8
  %147 = load i32, i32* @O_RDONLY, align 4
  %148 = call i32 @open(i8* %146, i32 %147)
  store i32 %148, i32* %8, align 4
  %149 = load i32, i32* %8, align 4
  %150 = icmp eq i32 %149, -1
  br i1 %150, label %151, label %154

151:                                              ; preds = %142
  %152 = call i32 @perror(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %153 = load i32, i32* @TEST_FAIL, align 4
  store i32 %153, i32* %10, align 4
  br label %180

154:                                              ; preds = %142
  %155 = load i32, i32* %13, align 4
  %156 = load i32, i32* @PROT_READ, align 4
  %157 = load i32, i32* @MAP_PRIVATE, align 4
  %158 = load i32, i32* %8, align 4
  %159 = call i8* @mmap(i32* null, i32 %155, i32 %156, i32 %157, i32 %158, i32 0)
  store i8* %159, i8** %14, align 8
  %160 = load i8*, i8** %14, align 8
  %161 = icmp eq i8* %160, inttoptr (i64 -1 to i8*)
  br i1 %161, label %162, label %165

162:                                              ; preds = %154
  %163 = call i32 @perror(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %164 = load i32, i32* @TEST_FAIL, align 4
  store i32 %164, i32* %10, align 4
  br label %180

165:                                              ; preds = %154
  %166 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %167 = load i8*, i8** %14, align 8
  %168 = load i32, i32* %13, align 4
  %169 = call i32 @check_core_file(%struct.shared_info* %166, i8* %167, i32 %168)
  store i32 %169, i32* %10, align 4
  %170 = load i8*, i8** %14, align 8
  %171 = load i32, i32* %13, align 4
  %172 = call i32 @munmap(i8* %170, i32 %171)
  %173 = load i32, i32* %8, align 4
  %174 = call i32 @close(i32 %173)
  %175 = load i32, i32* %9, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 %176
  %178 = load i8*, i8** %177, align 8
  %179 = call i32 @unlink(i8* %178)
  br label %180

180:                                              ; preds = %165, %162, %151, %139, %113, %86
  %181 = load i8*, i8** %6, align 8
  %182 = call i32 @free(i8* %181)
  %183 = load i32, i32* %10, align 4
  store i32 %183, i32* %3, align 4
  br label %184

184:                                              ; preds = %180, %71, %61, %50
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local i32 @ptrace_read_regs(i32, i32, i64*, i32) #1

declare dso_local i32 @PARENT_SKIP_IF_UNSUPPORTED(i32, i32*) #1

declare dso_local i32 @PARENT_FAIL_IF(i32, i32*) #1

declare dso_local i32 @prod_child(i32*) #1

declare dso_local i32 @wait(i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @WIFSIGNALED(i32) #1

declare dso_local i32 @WCOREDUMP(i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @try_core_file(i8*, %struct.shared_info*, i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @check_core_file(%struct.shared_info*, i8*, i32) #1

declare dso_local i32 @munmap(i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
