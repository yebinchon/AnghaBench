; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/kerberos/extr_kuhl_m_kerberos_ccache.c_kuhl_m_kerberos_ccache_externalname.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/kerberos/extr_kuhl_m_kerberos_ccache.c_kuhl_m_kerberos_ccache_externalname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i8*, i8* }

@FALSE = common dso_local global i32 0, align 4
@LPTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_kerberos_ccache_externalname(i64* %0, %struct.TYPE_3__** %1, i32* %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca %struct.TYPE_3__**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store %struct.TYPE_3__** %1, %struct.TYPE_3__*** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i64*, i64** %4, align 8
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %12, 4
  %14 = inttoptr i64 %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @_byteswap_ulong(i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %5, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %17, align 8
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %76

20:                                               ; preds = %3
  %21 = load i32, i32* @LPTR, align 4
  %22 = load i32, i32* %9, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = add i64 4, %25
  %27 = trunc i64 %26 to i32
  %28 = call i64 @LocalAlloc(i32 %21, i32 %27)
  %29 = inttoptr i64 %28 to %struct.TYPE_3__*
  %30 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %5, align 8
  store %struct.TYPE_3__* %29, %struct.TYPE_3__** %30, align 8
  %31 = icmp ne %struct.TYPE_3__* %29, null
  br i1 %31, label %32, label %75

32:                                               ; preds = %20
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  %36 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %5, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  store i8* %35, i8** %38, align 8
  %39 = load i64*, i64** %4, align 8
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i32*
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @_byteswap_ulong(i32 %42)
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  %46 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %5, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  store i8* %45, i8** %48, align 8
  %49 = load i64*, i64** %4, align 8
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %50, 8
  store i64 %51, i64* %49, align 8
  %52 = load i64*, i64** %4, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @kuhl_m_kerberos_ccache_unicode_string(i64* %52, i32* %53)
  store i32 %54, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %71, %32
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %55
  %60 = load i64*, i64** %4, align 8
  %61 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %5, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = call i32 @kuhl_m_kerberos_ccache_unicode_string(i64* %60, i32* %67)
  %69 = load i32, i32* %7, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %59
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %55

74:                                               ; preds = %55
  br label %75

75:                                               ; preds = %74, %20
  br label %76

76:                                               ; preds = %75, %3
  %77 = load i32, i32* %7, align 4
  ret i32 %77
}

declare dso_local i32 @_byteswap_ulong(i32) #1

declare dso_local i64 @LocalAlloc(i32, i32) #1

declare dso_local i32 @kuhl_m_kerberos_ccache_unicode_string(i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
