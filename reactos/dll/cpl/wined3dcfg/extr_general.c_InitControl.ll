; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/wined3dcfg/extr_general.c_InitControl.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/wined3dcfg/extr_general.c_InitControl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@MAX_KEY_LENGTH = common dso_local global i32 0, align 4
@CB_ADDSTRING = common dso_local global i32 0, align 4
@REG_DWORD = common dso_local global i64 0, align 8
@REG_SZ = common dso_local global i64 0, align 8
@CB_SETCURSEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InitControl(i32 %0, i32 %1, i32 %2, %struct.TYPE_3__* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %19 = load i32, i32* @MAX_KEY_LENGTH, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %13, align 8
  %22 = alloca i64, i64 %20, align 16
  store i64 %20, i64* %14, align 8
  %23 = mul nuw i64 8, %20
  store i64 %23, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %18, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = ptrtoint i64* %22 to i32
  %27 = call i32 @RegQueryValueExW(i32 %24, i32 %25, i32* null, i64* %16, i32 %26, i64* %15)
  store i64 0, i64* %17, align 8
  br label %28

28:                                               ; preds = %72, %6
  %29 = load i64, i64* %17, align 8
  %30 = load i64, i64* %12, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %75

32:                                               ; preds = %28
  %33 = load i32, i32* %7, align 4
  %34 = load i64, i64* %11, align 8
  %35 = load i32, i32* @CB_ADDSTRING, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %37 = load i64, i64* %17, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @SendDlgItemMessageW(i32 %33, i64 %34, i32 %35, i64 0, i32 %41)
  %43 = load i64, i64* %15, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %71

45:                                               ; preds = %32
  %46 = load i64, i64* %16, align 8
  %47 = load i64, i64* @REG_DWORD, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load i64, i64* %22, align 16
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %52 = load i64, i64* %17, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %50, %55
  br i1 %56, label %69, label %57

57:                                               ; preds = %49, %45
  %58 = load i64, i64* %16, align 8
  %59 = load i64, i64* @REG_SZ, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %57
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %63 = load i64, i64* %17, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @wcscmp(i64* %22, i64 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %61, %49
  %70 = load i64, i64* %17, align 8
  store i64 %70, i64* %18, align 8
  br label %71

71:                                               ; preds = %69, %61, %57, %32
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %17, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %17, align 8
  br label %28

75:                                               ; preds = %28
  %76 = load i32, i32* %7, align 4
  %77 = load i64, i64* %11, align 8
  %78 = load i32, i32* @CB_SETCURSEL, align 4
  %79 = load i64, i64* %18, align 8
  %80 = call i32 @SendDlgItemMessageW(i32 %76, i64 %77, i32 %78, i64 %79, i32 0)
  %81 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %81)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @RegQueryValueExW(i32, i32, i32*, i64*, i32, i64*) #2

declare dso_local i32 @SendDlgItemMessageW(i32, i64, i32, i64, i32) #2

declare dso_local i32 @wcscmp(i64*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
