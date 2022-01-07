; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dplayx/extr_dplay.c_DP_IF_DestroyPlayer.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dplayx/extr_dplay.c_DP_IF_DestroyPlayer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_16__*)* }
%struct.TYPE_16__ = type { i32, i64, i8* }
%struct.TYPE_17__ = type { i32, i8*, %struct.TYPE_15__* }

@.str = private unnamed_addr constant [33 x i8] c"(%p)->(%p,0x%08x,%u): semi stub\0A\00", align 1
@NO_PROVIDER = common dso_local global i64 0, align 8
@DPERR_UNINITIALIZED = common dso_local global i32 0, align 4
@DPERR_INVALIDPLAYER = common dso_local global i32 0, align 4
@cbDeletePlayerFromAllGroups = common dso_local global i32 0, align 4
@DPENUMGROUPS_ALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"data.dwFlags is incorrect\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Send a DELETEPLAYERORGROUP msg\0A\00", align 1
@DP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i8*, i8*, i32)* @DP_IF_DestroyPlayer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DP_IF_DestroyPlayer(%struct.TYPE_15__* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_17__, align 8
  %11 = alloca %struct.TYPE_16__, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load i32, i32* %9, align 4
  %16 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.TYPE_15__* %12, i8* %13, i8* %14, i32 %15)
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NO_PROVIDER, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* @DPERR_UNINITIALIZED, align 4
  store i32 %25, i32* %5, align 4
  br label %81

26:                                               ; preds = %4
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i32* @DP_FindPlayer(%struct.TYPE_15__* %27, i8* %28)
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @DPERR_INVALIDPLAYER, align 4
  store i32 %32, i32* %5, align 4
  br label %81

33:                                               ; preds = %26
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 2
  store %struct.TYPE_15__* %34, %struct.TYPE_15__** %35, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  store i8* %36, i8** %37, align 8
  %38 = load i32, i32* %9, align 4
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  store i32 %38, i32* %39, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 1
  %42 = load i32, i32* @cbDeletePlayerFromAllGroups, align 4
  %43 = load i32, i32* @DPENUMGROUPS_ALL, align 4
  %44 = call i32 @IDirectPlayX_EnumGroups(i32* %41, i32* null, i32 %42, %struct.TYPE_17__* %10, i32 %43)
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @DP_DeletePlayer(%struct.TYPE_15__* %45, i8* %46)
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %54, align 8
  %56 = icmp ne i32 (%struct.TYPE_16__*)* %55, null
  br i1 %56, label %57, label %78

57:                                               ; preds = %33
  %58 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i8*, i8** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 2
  store i8* %59, i8** %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  store i32 %67, i32* %68, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %75, align 8
  %77 = call i32 %76(%struct.TYPE_16__* %11)
  br label %78

78:                                               ; preds = %57, %33
  %79 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %80 = load i32, i32* @DP_OK, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %78, %31, %24
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local i32* @DP_FindPlayer(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @IDirectPlayX_EnumGroups(i32*, i32*, i32, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @DP_DeletePlayer(%struct.TYPE_15__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
