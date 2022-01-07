; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_encrypt.c_HPDF_Encrypt_Init.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_encrypt.c_HPDF_Encrypt_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@HPDF_ENCRYPT_R2 = common dso_local global i32 0, align 4
@HPDF_PADDING_STRING = common dso_local global i32 0, align 4
@HPDF_PASSWD_LEN = common dso_local global i32 0, align 4
@HPDF_ENABLE_PRINT = common dso_local global i32 0, align 4
@HPDF_ENABLE_EDIT_ALL = common dso_local global i32 0, align 4
@HPDF_ENABLE_COPY = common dso_local global i32 0, align 4
@HPDF_ENABLE_EDIT = common dso_local global i32 0, align 4
@HPDF_PERMISSION_PAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HPDF_Encrypt_Init(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %4 = call i32 @HPDF_MemSet(%struct.TYPE_4__* %3, i32 0, i32 4)
  %5 = load i32, i32* @HPDF_ENCRYPT_R2, align 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 4
  store i32 %5, i32* %7, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32 5, i32* %9, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @HPDF_PADDING_STRING, align 4
  %14 = load i32, i32* @HPDF_PASSWD_LEN, align 4
  %15 = call i32 @HPDF_MemCpy(i32 %12, i32 %13, i32 %14)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @HPDF_PADDING_STRING, align 4
  %20 = load i32, i32* @HPDF_PASSWD_LEN, align 4
  %21 = call i32 @HPDF_MemCpy(i32 %18, i32 %19, i32 %20)
  %22 = load i32, i32* @HPDF_ENABLE_PRINT, align 4
  %23 = load i32, i32* @HPDF_ENABLE_EDIT_ALL, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @HPDF_ENABLE_COPY, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @HPDF_ENABLE_EDIT, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @HPDF_PERMISSION_PAD, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  ret void
}

declare dso_local i32 @HPDF_MemSet(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @HPDF_MemCpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
