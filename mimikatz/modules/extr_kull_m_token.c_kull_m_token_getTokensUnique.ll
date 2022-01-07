; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_token.c_kull_m_token_getTokensUnique.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_token.c_kull_m_token_getTokensUnique.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__*, i64, i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@kull_m_token_getTokensUnique_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kull_m_token_getTokensUnique(i64 (i64, i32, i32)* %0, i32 %1) #0 {
  %3 = alloca i64 (i64, i32, i32)*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  store i64 (i64, i32, i32)* %0, i64 (i64, i32, i32)** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i64, i64* @FALSE, align 8
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* @TRUE, align 8
  store i64 %11, i64* %6, align 8
  %12 = bitcast %struct.TYPE_4__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 24, i1 false)
  %13 = load i32, i32* @kull_m_token_getTokensUnique_callback, align 4
  %14 = call i64 @kull_m_token_getTokens(i32 %13, %struct.TYPE_4__* %7)
  store i64 %14, i64* %5, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %66

16:                                               ; preds = %2
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %8, align 8
  br label %17

17:                                               ; preds = %35, %16
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i64, i64* %6, align 8
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi i1 [ false, %17 ], [ %22, %20 ]
  br i1 %24, label %25, label %39

25:                                               ; preds = %23
  %26 = load i64 (i64, i32, i32)*, i64 (i64, i32, i32)** %3, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i64 %26(i64 %29, i32 %32, i32 %33)
  store i64 %34, i64* %6, align 8
  br label %35

35:                                               ; preds = %25
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  store %struct.TYPE_4__* %38, %struct.TYPE_4__** %8, align 8
  br label %17

39:                                               ; preds = %23
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %8, align 8
  br label %40

40:                                               ; preds = %63, %39
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %42 = icmp ne %struct.TYPE_4__* %41, null
  br i1 %42, label %43, label %65

43:                                               ; preds = %40
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @CloseHandle(i64 %51)
  br label %53

53:                                               ; preds = %48, %43
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  store %struct.TYPE_4__* %56, %struct.TYPE_4__** %9, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %58 = icmp ne %struct.TYPE_4__* %57, %7
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %61 = call i32 @LocalFree(%struct.TYPE_4__* %60)
  br label %62

62:                                               ; preds = %59, %53
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  store %struct.TYPE_4__* %64, %struct.TYPE_4__** %8, align 8
  br label %40

65:                                               ; preds = %40
  br label %66

66:                                               ; preds = %65, %2
  %67 = load i64, i64* %5, align 8
  ret i64 %67
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @kull_m_token_getTokens(i32, %struct.TYPE_4__*) #2

declare dso_local i32 @CloseHandle(i64) #2

declare dso_local i32 @LocalFree(%struct.TYPE_4__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
