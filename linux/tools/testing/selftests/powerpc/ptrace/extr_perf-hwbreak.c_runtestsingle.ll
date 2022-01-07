; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_perf-hwbreak.c_runtestsingle.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_perf-hwbreak.c_runtestsingle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_attr = type { i32, i32, i32, i32, i64, i32 }

@DAWR_LENGTH_MAX = common dso_local global i32 0, align 4
@MAX_LOOPS = common dso_local global i32 0, align 4
@PERF_TYPE_BREAKPOINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"sys_perf_event_open\00", align 1
@PERF_EVENT_IOC_ENABLE = common dso_local global i32 0, align 4
@PERF_EVENT_IOC_DISABLE = common dso_local global i32 0, align 4
@HW_BREAKPOINT_R = common dso_local global i32 0, align 4
@HW_BREAKPOINT_W = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"TESTED: addr:0x%lx brks:% 8lld loops:% 8i rw:%i !user:%i array:%i\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"FAILED: 0x%lx brks:%lld needed:%lli %i %i %i\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @runtestsingle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @runtestsingle(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.perf_event_attr, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %23 = load i32, i32* @DAWR_LENGTH_MAX, align 4
  %24 = mul nsw i32 2, %23
  %25 = sext i32 %24 to i64
  %26 = udiv i64 %25, 4
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %15, align 8
  %28 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %16, align 8
  %29 = load i32, i32* @MAX_LOOPS, align 4
  %30 = call i32 (...) @rand()
  %31 = srem i32 %30, 100
  %32 = sub nsw i32 %29, %31
  store i32 %32, i32* %20, align 4
  %33 = ptrtoint i32* %28 to i64
  %34 = add i64 %33, 2047
  %35 = and i64 %34, -2048
  %36 = inttoptr i64 %35 to i32*
  store i32* %36, i32** %17, align 8
  store i32* %14, i32** %18, align 8
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %3
  %40 = load i32*, i32** %17, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  store i32* %41, i32** %18, align 8
  br label %42

42:                                               ; preds = %39, %3
  %43 = call i32 @memset(%struct.perf_event_attr* %10, i32 0, i32 32)
  %44 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %10, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load i32, i32* @PERF_TYPE_BREAKPOINT, align 4
  %46 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %10, i32 0, i32 5
  store i32 %45, i32* %46, align 8
  %47 = load i32, i32* %5, align 4
  %48 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %10, i32 0, i32 1
  store i32 %47, i32* %48, align 4
  %49 = load i32*, i32** %18, align 8
  %50 = ptrtoint i32* %49 to i64
  %51 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %10, i32 0, i32 4
  store i64 %50, i64* %51, align 8
  %52 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %10, i32 0, i32 2
  store i32 4, i32* %52, align 8
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %42
  %56 = load i32, i32* @DAWR_LENGTH_MAX, align 4
  %57 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %10, i32 0, i32 2
  store i32 %56, i32* %57, align 8
  br label %58

58:                                               ; preds = %55, %42
  %59 = load i32, i32* %6, align 4
  %60 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %10, i32 0, i32 3
  store i32 %59, i32* %60, align 4
  %61 = call i32 @sys_perf_event_open(%struct.perf_event_attr* %10, i32 0, i32 -1, i32 -1, i32 0)
  store i32 %61, i32* %19, align 4
  %62 = load i32, i32* %19, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = call i32 @perror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %66 = call i32 @exit(i32 1) #4
  unreachable

67:                                               ; preds = %58
  %68 = load i32, i32* %19, align 4
  %69 = load i32, i32* @PERF_EVENT_IOC_ENABLE, align 4
  %70 = call i32 @ioctl(i32 %68, i32 %69)
  store i32* %14, i32** %21, align 8
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %92, %67
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %20, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %95

75:                                               ; preds = %71
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %75
  %79 = load i32*, i32** %17, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = load i32, i32* @DAWR_LENGTH_MAX, align 4
  %83 = sext i32 %82 to i64
  %84 = udiv i64 %83, 4
  %85 = urem i64 %81, %84
  %86 = getelementptr inbounds i32, i32* %79, i64 %85
  store i32* %86, i32** %21, align 8
  br label %87

87:                                               ; preds = %78, %75
  %88 = load i32*, i32** %21, align 8
  %89 = load volatile i32, i32* %88, align 4
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load i32*, i32** %21, align 8
  store volatile i32 %90, i32* %91, align 4
  br label %92

92:                                               ; preds = %87
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %8, align 4
  br label %71

95:                                               ; preds = %71
  %96 = load i32, i32* %19, align 4
  %97 = load i32, i32* @PERF_EVENT_IOC_DISABLE, align 4
  %98 = call i32 @ioctl(i32 %96, i32 %97)
  %99 = load i32, i32* %19, align 4
  %100 = call i64 @read(i32 %99, i64* %12, i32 8)
  store i64 %100, i64* %11, align 8
  %101 = load i64, i64* %11, align 8
  %102 = icmp eq i64 %101, 8
  %103 = zext i1 %102 to i32
  %104 = call i32 @assert(i32 %103)
  store i64 0, i64* %13, align 8
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @HW_BREAKPOINT_R, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %95
  %110 = load i32, i32* %20, align 4
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* %13, align 8
  %113 = add i64 %112, %111
  store i64 %113, i64* %13, align 8
  br label %114

114:                                              ; preds = %109, %95
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @HW_BREAKPOINT_W, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  %120 = load i32, i32* %20, align 4
  %121 = sext i32 %120 to i64
  %122 = load i64, i64* %13, align 8
  %123 = add i64 %122, %121
  store i64 %123, i64* %13, align 8
  br label %124

124:                                              ; preds = %119, %114
  %125 = load i64, i64* %13, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sub nsw i32 1, %126
  %128 = sext i32 %127 to i64
  %129 = mul i64 %125, %128
  store i64 %129, i64* %13, align 8
  %130 = load i32*, i32** %18, align 8
  %131 = ptrtoint i32* %130 to i64
  %132 = load i64, i64* %12, align 8
  %133 = load i32, i32* %20, align 4
  %134 = sext i32 %133 to i64
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* %7, align 4
  %138 = call i32 @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i64 %131, i64 %132, i64 %134, i32 %135, i32 %136, i32 %137)
  %139 = load i64, i64* %12, align 8
  %140 = load i64, i64* %13, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %151

142:                                              ; preds = %124
  %143 = load i32*, i32** %18, align 8
  %144 = ptrtoint i32* %143 to i64
  %145 = load i64, i64* %12, align 8
  %146 = load i64, i64* %13, align 8
  %147 = load i32, i32* %20, align 4
  %148 = load i32, i32* %5, align 4
  %149 = load i32, i32* %6, align 4
  %150 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %144, i64 %145, i64 %146, i32 %147, i32 %148, i32 %149)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %22, align 4
  br label %154

151:                                              ; preds = %124
  %152 = load i32, i32* %19, align 4
  %153 = call i32 @close(i32 %152)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %22, align 4
  br label %154

154:                                              ; preds = %151, %142
  %155 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %155)
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @rand(...) #2

declare dso_local i32 @memset(%struct.perf_event_attr*, i32, i32) #2

declare dso_local i32 @sys_perf_event_open(%struct.perf_event_attr*, i32, i32, i32, i32) #2

declare dso_local i32 @perror(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @ioctl(i32, i32) #2

declare dso_local i64 @read(i32, i64*, i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @printf(i8*, i64, i64, i64, i32, i32, i32) #2

declare dso_local i32 @close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
