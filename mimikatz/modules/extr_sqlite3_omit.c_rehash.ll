; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_rehash.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_rehash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, %struct._ht* }
%struct.TYPE_6__ = type { %struct.TYPE_6__*, i32 }
%struct._ht = type { i32 }

@SQLITE_MALLOC_SOFT_LIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @rehash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rehash(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._ht*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = call i32 (...) @sqlite3BeginBenignMalloc()
  %11 = load i32, i32* %5, align 4
  %12 = zext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = trunc i64 %13 to i32
  %15 = call i64 @sqlite3Malloc(i32 %14)
  %16 = inttoptr i64 %15 to %struct._ht*
  store %struct._ht* %16, %struct._ht** %6, align 8
  %17 = call i32 (...) @sqlite3EndBenignMalloc()
  %18 = load %struct._ht*, %struct._ht** %6, align 8
  %19 = icmp eq %struct._ht* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %70

21:                                               ; preds = %2
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 2
  %24 = load %struct._ht*, %struct._ht** %23, align 8
  %25 = call i32 @sqlite3_free(%struct._ht* %24)
  %26 = load %struct._ht*, %struct._ht** %6, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  store %struct._ht* %26, %struct._ht** %28, align 8
  %29 = load %struct._ht*, %struct._ht** %6, align 8
  %30 = call i32 @sqlite3MallocSize(%struct._ht* %29)
  %31 = sext i32 %30 to i64
  %32 = udiv i64 %31, 4
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %5, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct._ht*, %struct._ht** %6, align 8
  %37 = load i32, i32* %5, align 4
  %38 = zext i32 %37 to i64
  %39 = mul i64 %38, 4
  %40 = trunc i64 %39 to i32
  %41 = call i32 @memset(%struct._ht* %36, i32 0, i32 %40)
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  store %struct.TYPE_6__* %44, %struct.TYPE_6__** %7, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %46, align 8
  br label %47

47:                                               ; preds = %67, %21
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %49 = icmp ne %struct.TYPE_6__* %48, null
  br i1 %49, label %50, label %69

50:                                               ; preds = %47
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @strHash(i32 %53)
  %55 = load i32, i32* %5, align 4
  %56 = urem i32 %54, %55
  store i32 %56, i32* %9, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  store %struct.TYPE_6__* %59, %struct.TYPE_6__** %8, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = load %struct._ht*, %struct._ht** %6, align 8
  %62 = load i32, i32* %9, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct._ht, %struct._ht* %61, i64 %63
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %66 = call i32 @insertElement(%struct.TYPE_7__* %60, %struct._ht* %64, %struct.TYPE_6__* %65)
  br label %67

67:                                               ; preds = %50
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %68, %struct.TYPE_6__** %7, align 8
  br label %47

69:                                               ; preds = %47
  store i32 1, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %20
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @sqlite3BeginBenignMalloc(...) #1

declare dso_local i64 @sqlite3Malloc(i32) #1

declare dso_local i32 @sqlite3EndBenignMalloc(...) #1

declare dso_local i32 @sqlite3_free(%struct._ht*) #1

declare dso_local i32 @sqlite3MallocSize(%struct._ht*) #1

declare dso_local i32 @memset(%struct._ht*, i32, i32) #1

declare dso_local i32 @strHash(i32) #1

declare dso_local i32 @insertElement(%struct.TYPE_7__*, %struct._ht*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
