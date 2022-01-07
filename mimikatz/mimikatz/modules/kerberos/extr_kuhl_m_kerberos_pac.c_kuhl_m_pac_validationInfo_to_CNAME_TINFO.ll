; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/kerberos/extr_kuhl_m_kerberos_pac.c_kuhl_m_pac_validationInfo_to_CNAME_TINFO.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/kerberos/extr_kuhl_m_kerberos_pac.c_kuhl_m_pac_validationInfo_to_CNAME_TINFO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32 }

@FALSE = common dso_local global i32 0, align 4
@LPTR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_pac_validationInfo_to_CNAME_TINFO(i32* %0, i32 %1, %struct.TYPE_3__** %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_3__** %2, %struct.TYPE_3__*** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @lstrlen(i32 %12)
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 4
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = sext i32 %17 to i64
  %19 = add i64 4, %18
  %20 = sub i64 %19, 4
  %21 = trunc i64 %20 to i32
  %22 = load i32*, i32** %8, align 8
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @LPTR, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @LocalAlloc(i32 %23, i32 %25)
  %27 = inttoptr i64 %26 to %struct.TYPE_3__*
  %28 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %7, align 8
  store %struct.TYPE_3__* %27, %struct.TYPE_3__** %28, align 8
  %29 = icmp ne %struct.TYPE_3__* %27, null
  br i1 %29, label %30, label %49

30:                                               ; preds = %4
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %7, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  store i32 %32, i32* %35, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %7, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i64 %37, i64* %40, align 8
  %41 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %7, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @RtlCopyMemory(i32 %44, i32 %45, i32 %46)
  %48 = load i32, i32* @TRUE, align 4
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %30, %4
  %50 = load i32, i32* %9, align 4
  ret i32 %50
}

declare dso_local i32 @lstrlen(i32) #1

declare dso_local i64 @LocalAlloc(i32, i32) #1

declare dso_local i32 @RtlCopyMemory(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
