; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_iis.c_kuhl_m_iis_apphost_apppool.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_iis.c_kuhl_m_iis_apphost_apppool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i32] [i32 110, i32 97, i32 109, i32 101, i32 0], align 4
@.str.1 = private unnamed_addr constant [26 x i32] [i32 10, i32 42, i32 32, i32 65, i32 112, i32 112, i32 108, i32 105, i32 99, i32 97, i32 116, i32 105, i32 111, i32 110, i32 80, i32 111, i32 111, i32 108, i32 58, i32 32, i32 39, i32 37, i32 115, i32 39, i32 10, i32 0], align 4
@.str.2 = private unnamed_addr constant [13 x i32] [i32 112, i32 114, i32 111, i32 99, i32 101, i32 115, i32 115, i32 77, i32 111, i32 100, i32 101, i32 108, i32 0], align 4
@S_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [9 x i32] [i32 117, i32 115, i32 101, i32 114, i32 78, i32 97, i32 109, i32 101, i32 0], align 4
@.str.4 = private unnamed_addr constant [16 x i32] [i32 32, i32 32, i32 85, i32 115, i32 101, i32 114, i32 110, i32 97, i32 109, i32 101, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.5 = private unnamed_addr constant [9 x i32] [i32 112, i32 97, i32 115, i32 115, i32 119, i32 111, i32 114, i32 100, i32 0], align 4
@.str.6 = private unnamed_addr constant [16 x i32] [i32 32, i32 32, i32 80, i32 97, i32 115, i32 115, i32 119, i32 111, i32 114, i32 100, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kuhl_m_iis_apphost_apppool(i32 %0, i32** %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i32*, i32** %8, align 8
  %12 = call i32 @kull_m_xml_getAttribute(i32* %11, i8* bitcast ([5 x i32]* @.str to i8*))
  store i32 %12, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %51

14:                                               ; preds = %4
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @kprintf(i8* bitcast ([26 x i32]* @.str.1 to i8*), i32 %15)
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @LocalFree(i32 %17)
  %19 = load i32*, i32** %8, align 8
  %20 = call i64 @IXMLDOMNode_selectSingleNode(i32* %19, i8* bitcast ([13 x i32]* @.str.2 to i8*), i32** %10)
  %21 = load i64, i64* @S_OK, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %50

23:                                               ; preds = %14
  %24 = load i32*, i32** %10, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %50

26:                                               ; preds = %23
  %27 = load i32*, i32** %10, align 8
  %28 = call i32 @kull_m_xml_getAttribute(i32* %27, i8* bitcast ([9 x i32]* @.str.3 to i8*))
  store i32 %28, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %26
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @kprintf(i8* bitcast ([16 x i32]* @.str.4 to i8*), i32 %31)
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @LocalFree(i32 %33)
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 @kull_m_xml_getAttribute(i32* %35, i8* bitcast ([9 x i32]* @.str.5 to i8*))
  store i32 %36, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %30
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @kprintf(i8* bitcast ([16 x i32]* @.str.6 to i8*), i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = load i32**, i32*** %6, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @kuhl_m_iis_maybeEncrypted(i32 %41, i32** %42, i32* %43, i32 %44)
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @LocalFree(i32 %46)
  br label %48

48:                                               ; preds = %38, %30
  br label %49

49:                                               ; preds = %48, %26
  br label %50

50:                                               ; preds = %49, %23, %14
  br label %51

51:                                               ; preds = %50, %4
  ret void
}

declare dso_local i32 @kull_m_xml_getAttribute(i32*, i8*) #1

declare dso_local i32 @kprintf(i8*, i32) #1

declare dso_local i32 @LocalFree(i32) #1

declare dso_local i64 @IXMLDOMNode_selectSingleNode(i32*, i8*, i32**) #1

declare dso_local i32 @kuhl_m_iis_maybeEncrypted(i32, i32**, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
