; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_rebar.c_REBAR_NCHitTest.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_rebar.c_REBAR_NCHitTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__, i64, i32 }
%struct.TYPE_11__ = type { i16, i16 }

@HTCLIENT = common dso_local global i64 0, align 8
@NM_NCHITTEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"notify changed return value from %ld to %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"returning %ld, client point %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_10__*, i32)* @REBAR_NCHitTest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @REBAR_NCHitTest(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__, align 8
  %6 = alloca %struct.TYPE_11__, align 2
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i64, i64* @HTCLIENT, align 8
  store i64 %10, i64* %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @LOWORD(i32 %11)
  %13 = trunc i64 %12 to i16
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  store i16 %13, i16* %14, align 2
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @HIWORD(i32 %15)
  %17 = trunc i64 %16 to i16
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  store i16 %17, i16* %18, align 2
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ScreenToClient(i32 %21, %struct.TYPE_11__* %6)
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 3
  %25 = bitcast i32* %24 to i64*
  %26 = call i32 @REBAR_InternalHitTest(%struct.TYPE_10__* %23, %struct.TYPE_11__* %6, i64* %8, i64* %25)
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %29 = bitcast %struct.TYPE_11__* %28 to i8*
  %30 = bitcast %struct.TYPE_11__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 2 %30, i64 4, i1 false)
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = bitcast %struct.TYPE_12__* %5 to i32*
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %34 = load i32, i32* @NM_NCHITTEST, align 4
  %35 = call i64 @REBAR_Notify(i32* %32, %struct.TYPE_10__* %33, i32 %34)
  store i64 %35, i64* %7, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %2
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @TRACE(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %38, i64 %39)
  %41 = load i64, i64* %7, align 8
  store i64 %41, i64* %9, align 8
  br label %42

42:                                               ; preds = %37, %2
  %43 = load i64, i64* %9, align 8
  %44 = call i64 @wine_dbgstr_point(%struct.TYPE_11__* %6)
  %45 = call i32 @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %43, i64 %44)
  %46 = load i64, i64* %9, align 8
  ret i64 %46
}

declare dso_local i64 @LOWORD(i32) #1

declare dso_local i64 @HIWORD(i32) #1

declare dso_local i32 @ScreenToClient(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @REBAR_InternalHitTest(%struct.TYPE_10__*, %struct.TYPE_11__*, i64*, i64*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @REBAR_Notify(i32*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @TRACE(i8*, i64, i64) #1

declare dso_local i64 @wine_dbgstr_point(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
