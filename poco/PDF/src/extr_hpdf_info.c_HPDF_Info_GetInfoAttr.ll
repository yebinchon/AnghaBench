; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_info.c_HPDF_Info_GetInfoAttr.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_info.c_HPDF_Info_GetInfoAttr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [24 x i8] c" HPDF_Info_GetInfoAttr\0A\00", align 1
@HPDF_OCLASS_STRING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @HPDF_Info_GetInfoAttr(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i8* @InfoTypeToName(i32 %8)
  store i8* %9, i8** %6, align 8
  %10 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %27

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* @HPDF_OCLASS_STRING, align 4
  %18 = call %struct.TYPE_3__* @HPDF_Dict_GetItem(i32 %15, i8* %16, i32 %17)
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %7, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %20 = icmp ne %struct.TYPE_3__* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  store i8* null, i8** %3, align 8
  br label %27

22:                                               ; preds = %14
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** %3, align 8
  br label %27

27:                                               ; preds = %22, %21, %13
  %28 = load i8*, i8** %3, align 8
  ret i8* %28
}

declare dso_local i8* @InfoTypeToName(i32) #1

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local %struct.TYPE_3__* @HPDF_Dict_GetItem(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
