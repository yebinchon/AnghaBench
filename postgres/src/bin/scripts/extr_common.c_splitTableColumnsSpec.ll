; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/scripts/extr_common.c_splitTableColumnsSpec.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/scripts/extr_common.c_splitTableColumnsSpec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @splitTableColumnsSpec(i8* %0, i32 %1, i8** %2, i8** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i8** %3, i8*** %8, align 8
  store i32 0, i32* %9, align 4
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %10, align 8
  br label %12

12:                                               ; preds = %61, %4
  %13 = load i8*, i8** %10, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  %18 = load i8*, i8** %10, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 40
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %22, %17
  %26 = phi i1 [ true, %17 ], [ %24, %22 ]
  br label %27

27:                                               ; preds = %25, %12
  %28 = phi i1 [ false, %12 ], [ %26, %25 ]
  br i1 %28, label %29, label %62

29:                                               ; preds = %27
  %30 = load i8*, i8** %10, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 34
  br i1 %33, label %34, label %54

34:                                               ; preds = %29
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load i8*, i8** %10, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 34
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i8*, i8** %10, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %10, align 8
  br label %51

46:                                               ; preds = %37, %34
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %46, %43
  %52 = load i8*, i8** %10, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %10, align 8
  br label %61

54:                                               ; preds = %29
  %55 = load i8*, i8** %10, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @PQmblen(i8* %55, i32 %56)
  %58 = load i8*, i8** %10, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  store i8* %60, i8** %10, align 8
  br label %61

61:                                               ; preds = %54, %51
  br label %12

62:                                               ; preds = %27
  %63 = load i8*, i8** %5, align 8
  %64 = call i8* @pg_strdup(i8* %63)
  %65 = load i8**, i8*** %7, align 8
  store i8* %64, i8** %65, align 8
  %66 = load i8**, i8*** %7, align 8
  %67 = load i8*, i8** %66, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = ptrtoint i8* %68 to i64
  %71 = ptrtoint i8* %69 to i64
  %72 = sub i64 %70, %71
  %73 = getelementptr inbounds i8, i8* %67, i64 %72
  store i8 0, i8* %73, align 1
  %74 = load i8*, i8** %10, align 8
  %75 = load i8**, i8*** %8, align 8
  store i8* %74, i8** %75, align 8
  ret void
}

declare dso_local i32 @PQmblen(i8*, i32) #1

declare dso_local i8* @pg_strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
