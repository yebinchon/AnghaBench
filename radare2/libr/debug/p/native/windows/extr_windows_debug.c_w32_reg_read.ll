; ModuleID = '/home/carl/AnghaBench/radare2/libr/debug/p/native/windows/extr_windows_debug.c_w32_reg_read.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/debug/p/native/windows/extr_windows_debug.c_w32_reg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }

@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@THREAD_SUSPEND_RESUME = common dso_local global i32 0, align 4
@THREAD_GET_CONTEXT = common dso_local global i32 0, align 4
@R_SYS_BITS_64 = common dso_local global i32 0, align 4
@THREAD_QUERY_INFORMATION = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"w32_reg_read/OpenThread\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @w32_reg_read(%struct.TYPE_8__* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, -1
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  store i32 1, i32* %10, align 4
  %18 = load i32, i32* %7, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %17, %4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %11, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @__is_thread_alive(%struct.TYPE_8__* %24, i64 %27)
  store i32 %28, i32* %12, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %20
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i8*
  br label %44

43:                                               ; preds = %20
  br label %44

44:                                               ; preds = %43, %37
  %45 = phi i8* [ %42, %37 ], [ null, %43 ]
  %46 = ptrtoint i8* %45 to i64
  store i64 %46, i64* %13, align 8
  %47 = load i64, i64* %13, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i64, i64* %13, align 8
  %51 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %85

53:                                               ; preds = %49, %44
  %54 = load i32, i32* @THREAD_SUSPEND_RESUME, align 4
  %55 = load i32, i32* @THREAD_GET_CONTEXT, align 4
  %56 = or i32 %54, %55
  store i32 %56, i32* %14, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @R_SYS_BITS_64, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %53
  %63 = load i32, i32* @THREAD_QUERY_INFORMATION, align 4
  %64 = load i32, i32* %14, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %14, align 4
  br label %66

66:                                               ; preds = %62, %53
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* @FALSE, align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @w32_OpenThread(i32 %67, i32 %68, i64 %71)
  store i64 %72, i64* %13, align 8
  %73 = load i64, i64* %13, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %66
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = call i32 @r_sys_perror(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %75, %66
  %81 = load i64, i64* %13, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %80
  store i32 0, i32* %5, align 4
  br label %135

84:                                               ; preds = %80
  br label %85

85:                                               ; preds = %84, %49
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %85
  %89 = load i64, i64* %13, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @__suspend_thread(i64 %89, i32 %92)
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load i64, i64* %13, align 8
  %97 = call i32 @CloseHandle(i64 %96)
  store i32 0, i32* %5, align 4
  br label %135

98:                                               ; preds = %88, %85
  %99 = load i64, i64* %13, align 8
  %100 = load i32*, i32** %8, align 8
  %101 = load i32, i32* %9, align 4
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @__get_thread_context(i64 %99, i32* %100, i32 %101, i32 %104)
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %98
  %109 = load i64, i64* %13, align 8
  %110 = load i32*, i32** %8, align 8
  %111 = call i32 @__printwincontext(i64 %109, i32* %110)
  br label %112

112:                                              ; preds = %108, %98
  %113 = load i32, i32* %12, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %112
  %116 = load i64, i64* %13, align 8
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @__resume_thread(i64 %116, i32 %119)
  %121 = icmp eq i32 %120, -1
  br i1 %121, label %122, label %123

122:                                              ; preds = %115
  store i32 0, i32* %9, align 4
  br label %123

123:                                              ; preds = %122, %115, %112
  %124 = load i64, i64* %13, align 8
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %124, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %123
  %131 = load i64, i64* %13, align 8
  %132 = call i32 @CloseHandle(i64 %131)
  br label %133

133:                                              ; preds = %130, %123
  %134 = load i32, i32* %9, align 4
  store i32 %134, i32* %5, align 4
  br label %135

135:                                              ; preds = %133, %95, %83
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local i32 @__is_thread_alive(%struct.TYPE_8__*, i64) #1

declare dso_local i64 @w32_OpenThread(i32, i32, i64) #1

declare dso_local i32 @r_sys_perror(i8*) #1

declare dso_local i32 @__suspend_thread(i64, i32) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i32 @__get_thread_context(i64, i32*, i32, i32) #1

declare dso_local i32 @__printwincontext(i64, i32*) #1

declare dso_local i32 @__resume_thread(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
