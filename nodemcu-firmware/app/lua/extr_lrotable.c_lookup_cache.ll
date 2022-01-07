; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lrotable.c_lookup_cache.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lrotable.c_lookup_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32 }

@LA_LINES = common dso_local global i32 0, align 4
@LA_SLOTS = common dso_local global i32 0, align 4
@cache = common dso_local global %struct.TYPE_3__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @lookup_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lookup_cache(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = lshr i32 %9, 2
  %11 = load i32, i32* @LA_LINES, align 4
  %12 = sub nsw i32 %11, 1
  %13 = and i32 %10, %12
  store i32 %13, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %45, %2
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @LA_SLOTS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %48

18:                                               ; preds = %14
  %19 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @cache, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %19, i64 %21
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  %27 = bitcast %struct.TYPE_3__* %8 to i8*
  %28 = bitcast %struct.TYPE_3__* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 24, i1 false)
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %18
  %34 = load i32*, i32** %5, align 8
  %35 = ptrtoint i32* %34 to i64
  %36 = and i64 %35, 16777215
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %36, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = call i32 @COUNT(i32 0)
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %3, align 4
  br label %50

44:                                               ; preds = %33, %18
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %14

48:                                               ; preds = %14
  %49 = call i32 @COUNT(i32 1)
  store i32 -1, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %40
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @COUNT(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
