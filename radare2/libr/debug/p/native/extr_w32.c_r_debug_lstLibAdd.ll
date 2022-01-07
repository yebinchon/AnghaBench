; ModuleID = '/home/carl/AnghaBench/radare2/libr/debug/p/native/extr_w32.c_r_debug_lstLibAdd.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/debug/p/native/extr_w32.c_r_debug_lstLibAdd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64, i32 }

@lstLib = common dso_local global i64 0, align 8
@PLIB_MAX = common dso_local global i32 0, align 4
@MEM_COMMIT = common dso_local global i32 0, align 4
@PAGE_READWRITE = common dso_local global i32 0, align 4
@lstLibPtr = common dso_local global %struct.TYPE_3__* null, align 8
@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"r_debug_lstLibAdd: Cannot find slot\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i64, i8*)* @r_debug_lstLibAdd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r_debug_lstLibAdd(i32 %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i64, i64* @lstLib, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %4
  %15 = load i32, i32* @PLIB_MAX, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* @MEM_COMMIT, align 4
  %20 = load i32, i32* @PAGE_READWRITE, align 4
  %21 = call i64 @VirtualAlloc(i32 0, i32 %18, i32 %19, i32 %20)
  store i64 %21, i64* @lstLib, align 8
  br label %22

22:                                               ; preds = %14, %4
  %23 = load i64, i64* @lstLib, align 8
  %24 = inttoptr i64 %23 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** @lstLibPtr, align 8
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %86, %22
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @PLIB_MAX, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %89

29:                                               ; preds = %25
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lstLibPtr, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %83, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lstLibPtr, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lstLibPtr, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 3
  store i64 %38, i64* %40, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lstLibPtr, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lstLibPtr, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %8, align 8
  %48 = load i32, i32* @MAX_PATH, align 4
  %49 = sub nsw i32 %48, 1
  %50 = call i32 @strncpy(i32 %46, i8* %47, i32 %49)
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @strlen(i8* %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %67, %34
  %55 = load i8*, i8** %8, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 92
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load i32, i32* %10, align 4
  %64 = icmp sge i32 %63, 0
  br label %65

65:                                               ; preds = %62, %54
  %66 = phi i1 [ false, %54 ], [ %64, %62 ]
  br i1 %66, label %67, label %70

67:                                               ; preds = %65
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %10, align 4
  br label %54

70:                                               ; preds = %65
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lstLibPtr, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %74, i64 %77
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %10, align 4
  %81 = sub nsw i32 %79, %80
  %82 = call i32 @strncpy(i32 %73, i8* %78, i32 %81)
  br label %91

83:                                               ; preds = %29
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lstLibPtr, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 1
  store %struct.TYPE_3__* %85, %struct.TYPE_3__** @lstLibPtr, align 8
  br label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %9, align 4
  br label %25

89:                                               ; preds = %25
  %90 = call i32 @eprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %70
  ret void
}

declare dso_local i64 @VirtualAlloc(i32, i32, i32, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @eprintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
