; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_objects.c_HPDF_Obj_ForceFree.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_objects.c_HPDF_Obj_ForceFree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [21 x i8] c" HPDF_Obj_ForceFree\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c" HPDF_Obj_ForceFree obj=0x%08X obj_id=0x%08X obj_class=0x%08X\0A\00", align 1
@HPDF_OCLASS_ANY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HPDF_Obj_ForceFree(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %46

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = ptrtoint i8* %13 to i32
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @HPDF_PTRACE(i8* %23)
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @HPDF_OCLASS_ANY, align 4
  %29 = and i32 %27, %28
  switch i32 %29, label %42 [
    i32 128, label %30
    i32 130, label %33
    i32 131, label %36
    i32 129, label %39
  ]

30:                                               ; preds = %10
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @HPDF_String_Free(i8* %31)
  br label %46

33:                                               ; preds = %10
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @HPDF_Binary_Free(i8* %34)
  br label %46

36:                                               ; preds = %10
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @HPDF_Array_Free(i8* %37)
  br label %46

39:                                               ; preds = %10
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @HPDF_Dict_Free(i8* %40)
  br label %46

42:                                               ; preds = %10
  %43 = load i32, i32* %3, align 4
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 @HPDF_FreeMem(i32 %43, i8* %44)
  br label %46

46:                                               ; preds = %9, %42, %39, %36, %33, %30
  ret void
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i32 @HPDF_String_Free(i8*) #1

declare dso_local i32 @HPDF_Binary_Free(i8*) #1

declare dso_local i32 @HPDF_Array_Free(i8*) #1

declare dso_local i32 @HPDF_Dict_Free(i8*) #1

declare dso_local i32 @HPDF_FreeMem(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
