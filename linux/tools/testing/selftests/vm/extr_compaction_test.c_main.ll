; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_compaction_test.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_compaction_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i8*, i8* }
%struct.map_list = type { i8*, %struct.map_list* }

@.str = private unnamed_addr constant [113 x i8] c"Either the sysctl compact_unevictable_allowed is not\0Aset to 1 or couldn't read the proc file.\0ASkipping the test\0A\00", align 1
@KSFT_SKIP = common dso_local global i32 0, align 4
@RLIM_INFINITY = common dso_local global i8* null, align 8
@RLIMIT_MEMLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Failed to set rlimit:\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"ERROR: Cannot read meminfo\0A\00", align 1
@MAP_SIZE = common dso_local global i64 0, align 8
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_ANONYMOUS = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_LOCKED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.rlimit, align 8
  %7 = alloca %struct.map_list*, align 8
  %8 = alloca %struct.map_list*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %15 = call i64 (...) @prereq()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = call i32 @printf(i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @KSFT_SKIP, align 4
  store i32 %19, i32* %3, align 4
  br label %127

20:                                               ; preds = %2
  %21 = load i8*, i8** @RLIM_INFINITY, align 8
  %22 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %6, i32 0, i32 1
  store i8* %21, i8** %22, align 8
  %23 = load i8*, i8** @RLIM_INFINITY, align 8
  %24 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %6, i32 0, i32 0
  store i8* %23, i8** %24, align 8
  %25 = load i32, i32* @RLIMIT_MEMLOCK, align 4
  %26 = call i64 @setrlimit(i32 %25, %struct.rlimit* %6)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = call i32 @perror(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %127

30:                                               ; preds = %20
  %31 = call i64 (...) @getpagesize()
  store i64 %31, i64* %9, align 8
  store %struct.map_list* null, %struct.map_list** %7, align 8
  %32 = call i64 @read_memory_info(i64* %12, i64* %13)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %127

36:                                               ; preds = %30
  %37 = load i64, i64* %12, align 8
  %38 = uitofp i64 %37 to double
  %39 = fmul double %38, 8.000000e-01
  %40 = fdiv double %39, 1.024000e+03
  %41 = fptoui double %40 to i64
  store i64 %41, i64* %14, align 8
  br label %42

42:                                               ; preds = %93, %36
  %43 = load i64, i64* %14, align 8
  %44 = icmp ugt i64 %43, 0
  br i1 %44, label %45, label %96

45:                                               ; preds = %42
  %46 = load i64, i64* @MAP_SIZE, align 8
  %47 = load i32, i32* @PROT_READ, align 4
  %48 = load i32, i32* @PROT_WRITE, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @MAP_ANONYMOUS, align 4
  %51 = load i32, i32* @MAP_PRIVATE, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @MAP_LOCKED, align 4
  %54 = or i32 %52, %53
  %55 = call i8* @mmap(i32* null, i64 %46, i32 %49, i32 %54, i32 -1, i32 0)
  store i8* %55, i8** %11, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = load i8*, i8** @MAP_FAILED, align 8
  %58 = icmp eq i8* %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %45
  br label %96

60:                                               ; preds = %45
  %61 = call %struct.map_list* @malloc(i32 16)
  store %struct.map_list* %61, %struct.map_list** %8, align 8
  %62 = load %struct.map_list*, %struct.map_list** %8, align 8
  %63 = icmp ne %struct.map_list* %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = load i8*, i8** %11, align 8
  %66 = load i64, i64* @MAP_SIZE, align 8
  %67 = call i32 @munmap(i8* %65, i64 %66)
  br label %96

68:                                               ; preds = %60
  %69 = load i8*, i8** %11, align 8
  %70 = load %struct.map_list*, %struct.map_list** %8, align 8
  %71 = getelementptr inbounds %struct.map_list, %struct.map_list* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  %72 = load %struct.map_list*, %struct.map_list** %7, align 8
  %73 = load %struct.map_list*, %struct.map_list** %8, align 8
  %74 = getelementptr inbounds %struct.map_list, %struct.map_list* %73, i32 0, i32 1
  store %struct.map_list* %72, %struct.map_list** %74, align 8
  %75 = load %struct.map_list*, %struct.map_list** %8, align 8
  store %struct.map_list* %75, %struct.map_list** %7, align 8
  store i64 0, i64* %10, align 8
  br label %76

76:                                               ; preds = %89, %68
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* @MAP_SIZE, align 8
  %79 = icmp ult i64 %77, %78
  br i1 %79, label %80, label %93

80:                                               ; preds = %76
  %81 = load i8*, i8** %11, align 8
  %82 = ptrtoint i8* %81 to i64
  %83 = load i64, i64* %10, align 8
  %84 = add i64 %82, %83
  %85 = load i8*, i8** %11, align 8
  %86 = load i64, i64* %10, align 8
  %87 = getelementptr i8, i8* %85, i64 %86
  %88 = bitcast i8* %87 to i64*
  store i64 %84, i64* %88, align 8
  br label %89

89:                                               ; preds = %80
  %90 = load i64, i64* %9, align 8
  %91 = load i64, i64* %10, align 8
  %92 = add i64 %91, %90
  store i64 %92, i64* %10, align 8
  br label %76

93:                                               ; preds = %76
  %94 = load i64, i64* %14, align 8
  %95 = add i64 %94, -1
  store i64 %95, i64* %14, align 8
  br label %42

96:                                               ; preds = %64, %59, %42
  %97 = load %struct.map_list*, %struct.map_list** %7, align 8
  store %struct.map_list* %97, %struct.map_list** %8, align 8
  br label %98

98:                                               ; preds = %116, %96
  %99 = load %struct.map_list*, %struct.map_list** %8, align 8
  %100 = icmp ne %struct.map_list* %99, null
  br i1 %100, label %101, label %120

101:                                              ; preds = %98
  %102 = load %struct.map_list*, %struct.map_list** %8, align 8
  %103 = getelementptr inbounds %struct.map_list, %struct.map_list* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = load i64, i64* @MAP_SIZE, align 8
  %106 = call i32 @munmap(i8* %104, i64 %105)
  %107 = load %struct.map_list*, %struct.map_list** %8, align 8
  %108 = getelementptr inbounds %struct.map_list, %struct.map_list* %107, i32 0, i32 1
  %109 = load %struct.map_list*, %struct.map_list** %108, align 8
  %110 = icmp ne %struct.map_list* %109, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %101
  br label %120

112:                                              ; preds = %101
  %113 = load %struct.map_list*, %struct.map_list** %8, align 8
  %114 = getelementptr inbounds %struct.map_list, %struct.map_list* %113, i32 0, i32 1
  %115 = load %struct.map_list*, %struct.map_list** %114, align 8
  store %struct.map_list* %115, %struct.map_list** %8, align 8
  br label %116

116:                                              ; preds = %112
  %117 = load %struct.map_list*, %struct.map_list** %8, align 8
  %118 = getelementptr inbounds %struct.map_list, %struct.map_list* %117, i32 0, i32 1
  %119 = load %struct.map_list*, %struct.map_list** %118, align 8
  store %struct.map_list* %119, %struct.map_list** %8, align 8
  br label %98

120:                                              ; preds = %111, %98
  %121 = load i64, i64* %12, align 8
  %122 = load i64, i64* %13, align 8
  %123 = call i64 @check_compaction(i64 %121, i64 %122)
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  store i32 0, i32* %3, align 4
  br label %127

126:                                              ; preds = %120
  store i32 -1, i32* %3, align 4
  br label %127

127:                                              ; preds = %126, %125, %34, %28, %17
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i64 @prereq(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @setrlimit(i32, %struct.rlimit*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @getpagesize(...) #1

declare dso_local i64 @read_memory_info(i64*, i64*) #1

declare dso_local i8* @mmap(i32*, i64, i32, i32, i32, i32) #1

declare dso_local %struct.map_list* @malloc(i32) #1

declare dso_local i32 @munmap(i8*, i64) #1

declare dso_local i64 @check_compaction(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
