; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_control.c_DoControlService.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_control.c_DoControlService.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32, i32 }

@SERVICE_PAUSED = common dso_local global i64 0, align 8
@SERVICE_RUNNING = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@SC_MANAGER_CONNECT = common dso_local global i32 0, align 4
@SERVICE_PAUSE_CONTINUE = common dso_local global i32 0, align 4
@SERVICE_INTERROGATE = common dso_local global i32 0, align 4
@SERVICE_QUERY_STATUS = common dso_local global i32 0, align 4
@DEFAULT_STEP = common dso_local global i32 0, align 4
@SC_STATUS_PROCESS_INFO = common dso_local global i32 0, align 4
@MAX_WAIT_TIME = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @DoControlService(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_2__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %20 = bitcast %struct.TYPE_2__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 24, i1 false)
  store i64 0, i64* %12, align 8
  %21 = load i64, i64* %7, align 8
  switch i64 %21, label %26 [
    i64 128, label %22
    i64 129, label %24
  ]

22:                                               ; preds = %3
  %23 = load i64, i64* @SERVICE_PAUSED, align 8
  store i64 %23, i64* %17, align 8
  br label %28

24:                                               ; preds = %3
  %25 = load i64, i64* @SERVICE_RUNNING, align 8
  store i64 %25, i64* %17, align 8
  br label %28

26:                                               ; preds = %3
  %27 = load i64, i64* @FALSE, align 8
  store i64 %27, i64* %4, align 8
  br label %155

28:                                               ; preds = %24, %22
  %29 = load i32, i32* @SC_MANAGER_CONNECT, align 4
  %30 = call i32 @OpenSCManagerW(i32* null, i32* null, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = load i64, i64* @FALSE, align 8
  store i64 %34, i64* %4, align 8
  br label %155

35:                                               ; preds = %28
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @SERVICE_PAUSE_CONTINUE, align 4
  %39 = load i32, i32* @SERVICE_INTERROGATE, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @SERVICE_QUERY_STATUS, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @OpenServiceW(i32 %36, i32 %37, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %35
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @CloseServiceHandle(i32 %47)
  %49 = load i64, i64* @FALSE, align 8
  store i64 %49, i64* %4, align 8
  br label %155

50:                                               ; preds = %35
  %51 = load i32, i32* %9, align 4
  %52 = load i64, i64* %7, align 8
  %53 = call i64 @ControlService(i32 %51, i64 %52, i32* %11)
  store i64 %53, i64* %19, align 8
  %54 = load i64, i64* %19, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %149

56:                                               ; preds = %50
  %57 = load i64, i64* %6, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i64, i64* %6, align 8
  %61 = load i32, i32* @DEFAULT_STEP, align 4
  %62 = call i32 @IncrementProgressBar(i64 %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %56
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @SC_STATUS_PROCESS_INFO, align 4
  %66 = ptrtoint %struct.TYPE_2__* %10 to i32
  %67 = call i64 @QueryServiceStatusEx(i32 %64, i32 %65, i32 %66, i32 24, i64* %12)
  store i64 %67, i64* %19, align 8
  %68 = load i64, i64* %19, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %141

70:                                               ; preds = %63
  %71 = load i64, i64* @FALSE, align 8
  store i64 %71, i64* %19, align 8
  %72 = load i64, i64* @MAX_WAIT_TIME, align 8
  store i64 %72, i64* %16, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %14, align 8
  %75 = call i64 (...) @GetTickCount()
  store i64 %75, i64* %13, align 8
  br label %76

76:                                               ; preds = %139, %70
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %17, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %140

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = sdiv i32 %83, 10
  %85 = sext i32 %84 to i64
  store i64 %85, i64* %15, align 8
  %86 = load i64, i64* %15, align 8
  %87 = icmp slt i64 %86, 1000
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  store i64 1000, i64* %15, align 8
  br label %94

89:                                               ; preds = %81
  %90 = load i64, i64* %15, align 8
  %91 = icmp sgt i64 %90, 10000
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store i64 10000, i64* %15, align 8
  br label %93

93:                                               ; preds = %92, %89
  br label %94

94:                                               ; preds = %93, %88
  %95 = load i64, i64* %15, align 8
  %96 = sdiv i64 %95, 1000
  store i64 %96, i64* %18, align 8
  br label %97

97:                                               ; preds = %109, %94
  %98 = load i64, i64* %18, align 8
  %99 = icmp sgt i64 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %97
  %101 = call i32 @Sleep(i32 1000)
  %102 = load i64, i64* %6, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load i64, i64* %6, align 8
  %106 = load i32, i32* @DEFAULT_STEP, align 4
  %107 = call i32 @IncrementProgressBar(i64 %105, i32 %106)
  br label %108

108:                                              ; preds = %104, %100
  br label %109

109:                                              ; preds = %108
  %110 = load i64, i64* %18, align 8
  %111 = add nsw i64 %110, -1
  store i64 %111, i64* %18, align 8
  br label %97

112:                                              ; preds = %97
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* @SC_STATUS_PROCESS_INFO, align 4
  %115 = ptrtoint %struct.TYPE_2__* %10 to i32
  %116 = call i64 @QueryServiceStatusEx(i32 %113, i32 %114, i32 %115, i32 24, i64* %12)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %112
  br label %140

119:                                              ; preds = %112
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* %14, align 8
  %123 = icmp sgt i64 %121, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %119
  %125 = call i64 (...) @GetTickCount()
  store i64 %125, i64* %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  store i64 %127, i64* %14, align 8
  %128 = load i64, i64* %6, align 8
  %129 = load i32, i32* @DEFAULT_STEP, align 4
  %130 = call i32 @IncrementProgressBar(i64 %128, i32 %129)
  br label %139

131:                                              ; preds = %119
  %132 = call i64 (...) @GetTickCount()
  %133 = load i64, i64* %13, align 8
  %134 = load i64, i64* %16, align 8
  %135 = add nsw i64 %133, %134
  %136 = icmp sge i64 %132, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  br label %140

138:                                              ; preds = %131
  br label %139

139:                                              ; preds = %138, %124
  br label %76

140:                                              ; preds = %137, %118, %76
  br label %141

141:                                              ; preds = %140, %63
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* %17, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %141
  %147 = load i64, i64* @TRUE, align 8
  store i64 %147, i64* %19, align 8
  br label %148

148:                                              ; preds = %146, %141
  br label %149

149:                                              ; preds = %148, %50
  %150 = load i32, i32* %9, align 4
  %151 = call i32 @CloseServiceHandle(i32 %150)
  %152 = load i32, i32* %8, align 4
  %153 = call i32 @CloseServiceHandle(i32 %152)
  %154 = load i64, i64* %19, align 8
  store i64 %154, i64* %4, align 8
  br label %155

155:                                              ; preds = %149, %46, %33, %26
  %156 = load i64, i64* %4, align 8
  ret i64 %156
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @OpenSCManagerW(i32*, i32*, i32) #2

declare dso_local i32 @OpenServiceW(i32, i32, i32) #2

declare dso_local i32 @CloseServiceHandle(i32) #2

declare dso_local i64 @ControlService(i32, i64, i32*) #2

declare dso_local i32 @IncrementProgressBar(i64, i32) #2

declare dso_local i64 @QueryServiceStatusEx(i32, i32, i32, i32, i64*) #2

declare dso_local i64 @GetTickCount(...) #2

declare dso_local i32 @Sleep(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
