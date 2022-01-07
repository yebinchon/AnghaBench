; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_common.c_findOwningExtension.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_common.c_findOwningExtension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@numextmembers = common dso_local global i32 0, align 4
@extmembers = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @findOwningExtension(i64 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_8__, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = bitcast %struct.TYPE_8__* %3 to i64*
  store i64 %0, i64* %8, align 4
  %9 = load i32, i32* @numextmembers, align 4
  %10 = icmp sle i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %69

12:                                               ; preds = %1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** @extmembers, align 8
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %4, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** @extmembers, align 8
  %15 = load i32, i32* @numextmembers, align 4
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i64 %17
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %5, align 8
  br label %19

19:                                               ; preds = %67, %12
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = icmp ule %struct.TYPE_7__* %20, %21
  br i1 %22, label %23, label %68

23:                                               ; preds = %19
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = ptrtoint %struct.TYPE_7__* %25 to i64
  %28 = ptrtoint %struct.TYPE_7__* %26 to i64
  %29 = sub i64 %27, %28
  %30 = sdiv exact i64 %29, 16
  %31 = sdiv i64 %30, 2
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i64 %31
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %6, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @oidcmp(i32 %36, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %23
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @oidcmp(i32 %46, i32 %48)
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %42, %23
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  store i32* %56, i32** %2, align 8
  br label %69

57:                                               ; preds = %50
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i64 1
  store %struct.TYPE_7__* %62, %struct.TYPE_7__** %4, align 8
  br label %66

63:                                               ; preds = %57
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i64 -1
  store %struct.TYPE_7__* %65, %struct.TYPE_7__** %5, align 8
  br label %66

66:                                               ; preds = %63, %60
  br label %67

67:                                               ; preds = %66
  br label %19

68:                                               ; preds = %19
  store i32* null, i32** %2, align 8
  br label %69

69:                                               ; preds = %68, %53, %11
  %70 = load i32*, i32** %2, align 8
  ret i32* %70
}

declare dso_local i32 @oidcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
