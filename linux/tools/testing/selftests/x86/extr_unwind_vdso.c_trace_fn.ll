; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_unwind_vdso.c_trace_fn.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_unwind_vdso.c_trace_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Unwind_Context = type { i32 }
%struct.unwind_state = type { i32, i64 }

@_URC_NO_REASON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"\09  0x%lx\0A\00", align 1
@return_address = common dso_local global i64 0, align 8
@SYS_getpid = common dso_local global i64 0, align 8
@nerrs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"[%s]\09  NR = %ld, args = %ld, %ld, %ld, %ld, %ld, %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"FAIL\00", align 1
@_URC_NORMAL_STOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trace_fn(%struct._Unwind_Context* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._Unwind_Context*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.unwind_state*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct._Unwind_Context* %0, %struct._Unwind_Context** %4, align 8
  store i8* %1, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.unwind_state*
  store %struct.unwind_state* %17, %struct.unwind_state** %6, align 8
  %18 = load %struct._Unwind_Context*, %struct._Unwind_Context** %4, align 8
  %19 = call i64 @_Unwind_GetIP(%struct._Unwind_Context* %18)
  store i64 %19, i64* %7, align 8
  %20 = load %struct.unwind_state*, %struct.unwind_state** %6, align 8
  %21 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %36

24:                                               ; preds = %2
  %25 = load i64, i64* %7, align 8
  %26 = load %struct.unwind_state*, %struct.unwind_state** %6, align 8
  %27 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load %struct.unwind_state*, %struct.unwind_state** %6, align 8
  %32 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  br label %35

33:                                               ; preds = %24
  %34 = load i32, i32* @_URC_NO_REASON, align 4
  store i32 %34, i32* %3, align 4
  br label %110

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %35, %2
  %37 = load i64, i64* %7, align 8
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %37)
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* @return_address, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %104

42:                                               ; preds = %36
  %43 = load %struct._Unwind_Context*, %struct._Unwind_Context** %4, align 8
  %44 = call i64 @_Unwind_GetGR(%struct._Unwind_Context* %43, i32 0)
  store i64 %44, i64* %8, align 8
  %45 = load %struct._Unwind_Context*, %struct._Unwind_Context** %4, align 8
  %46 = call i64 @_Unwind_GetGR(%struct._Unwind_Context* %45, i32 1)
  store i64 %46, i64* %9, align 8
  %47 = load %struct._Unwind_Context*, %struct._Unwind_Context** %4, align 8
  %48 = call i64 @_Unwind_GetGR(%struct._Unwind_Context* %47, i32 2)
  store i64 %48, i64* %10, align 8
  %49 = load %struct._Unwind_Context*, %struct._Unwind_Context** %4, align 8
  %50 = call i64 @_Unwind_GetGR(%struct._Unwind_Context* %49, i32 3)
  store i64 %50, i64* %11, align 8
  %51 = load %struct._Unwind_Context*, %struct._Unwind_Context** %4, align 8
  %52 = call i64 @_Unwind_GetGR(%struct._Unwind_Context* %51, i32 5)
  store i64 %52, i64* %12, align 8
  %53 = load %struct._Unwind_Context*, %struct._Unwind_Context** %4, align 8
  %54 = call i64 @_Unwind_GetGR(%struct._Unwind_Context* %53, i32 6)
  store i64 %54, i64* %13, align 8
  %55 = load %struct._Unwind_Context*, %struct._Unwind_Context** %4, align 8
  %56 = call i64 @_Unwind_GetGR(%struct._Unwind_Context* %55, i32 7)
  store i64 %56, i64* %14, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* @SYS_getpid, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %42
  %61 = load i64, i64* %8, align 8
  %62 = call i64 (...) @getpid()
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %82

64:                                               ; preds = %60, %42
  %65 = load i64, i64* %11, align 8
  %66 = icmp eq i64 %65, 1
  br i1 %66, label %67, label %82

67:                                               ; preds = %64
  %68 = load i64, i64* %9, align 8
  %69 = icmp eq i64 %68, 2
  br i1 %69, label %70, label %82

70:                                               ; preds = %67
  %71 = load i64, i64* %10, align 8
  %72 = icmp eq i64 %71, 3
  br i1 %72, label %73, label %82

73:                                               ; preds = %70
  %74 = load i64, i64* %13, align 8
  %75 = icmp eq i64 %74, 4
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load i64, i64* %14, align 8
  %78 = icmp eq i64 %77, 5
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i64, i64* %12, align 8
  %81 = icmp eq i64 %80, 6
  br label %82

82:                                               ; preds = %79, %76, %73, %70, %67, %64, %60
  %83 = phi i1 [ false, %76 ], [ false, %73 ], [ false, %70 ], [ false, %67 ], [ false, %64 ], [ false, %60 ], [ %81, %79 ]
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %15, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* @nerrs, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* @nerrs, align 4
  br label %90

90:                                               ; preds = %87, %82
  %91 = load i32, i32* %15, align 4
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %95 = load i64, i64* %8, align 8
  %96 = load i64, i64* %11, align 8
  %97 = load i64, i64* %9, align 8
  %98 = load i64, i64* %10, align 8
  %99 = load i64, i64* %13, align 8
  %100 = load i64, i64* %14, align 8
  %101 = load i64, i64* %12, align 8
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i8* %94, i64 %95, i64 %96, i64 %97, i64 %98, i64 %99, i64 %100, i64 %101)
  %103 = load i32, i32* @_URC_NORMAL_STOP, align 4
  store i32 %103, i32* %3, align 4
  br label %110

104:                                              ; preds = %36
  %105 = load %struct.unwind_state*, %struct.unwind_state** %6, align 8
  %106 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 8
  %109 = load i32, i32* @_URC_NO_REASON, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %104, %90, %33
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i64 @_Unwind_GetIP(%struct._Unwind_Context*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @_Unwind_GetGR(%struct._Unwind_Context*, i32) #1

declare dso_local i64 @getpid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
