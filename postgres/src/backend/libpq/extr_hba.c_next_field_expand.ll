; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_hba.c_next_field_expand.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_hba.c_next_field_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_TOKEN = common dso_local global i32 0, align 4
@NIL = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8**, i32, i8**)* @next_field_expand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @next_field_expand(i8* %0, i8** %1, i32 %2, i8** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8** %3, i8*** %8, align 8
  %14 = load i32, i32* @MAX_TOKEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load i32*, i32** @NIL, align 8
  store i32* %18, i32** %13, align 8
  br label %19

19:                                               ; preds = %60, %4
  %20 = load i8**, i8*** %6, align 8
  %21 = trunc i64 %15 to i32
  %22 = load i32, i32* %7, align 4
  %23 = load i8**, i8*** %8, align 8
  %24 = call i32 @next_token(i8** %20, i8* %17, i32 %21, i32* %12, i32* %11, i32 %22, i8** %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  br label %62

27:                                               ; preds = %19
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %47, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds i8, i8* %17, i64 0
  %32 = load i8, i8* %31, align 16
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 64
  br i1 %34, label %35, label %47

35:                                               ; preds = %30
  %36 = getelementptr inbounds i8, i8* %17, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load i32*, i32** %13, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %17, i64 1
  %44 = load i32, i32* %7, align 4
  %45 = load i8**, i8*** %8, align 8
  %46 = call i32* @tokenize_inc_file(i32* %41, i8* %42, i8* %43, i32 %44, i8** %45)
  store i32* %46, i32** %13, align 8
  br label %52

47:                                               ; preds = %35, %30, %27
  %48 = load i32*, i32** %13, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @make_hba_token(i8* %17, i32 %49)
  %51 = call i32* @lappend(i32* %48, i32 %50)
  store i32* %51, i32** %13, align 8
  br label %52

52:                                               ; preds = %47, %40
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i8**, i8*** %8, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = icmp eq i8* %58, null
  br label %60

60:                                               ; preds = %56, %53
  %61 = phi i1 [ false, %53 ], [ %59, %56 ]
  br i1 %61, label %19, label %62

62:                                               ; preds = %60, %26
  %63 = load i32*, i32** %13, align 8
  %64 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %64)
  ret i32* %63
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @next_token(i8**, i8*, i32, i32*, i32*, i32, i8**) #2

declare dso_local i32* @tokenize_inc_file(i32*, i8*, i8*, i32, i8**) #2

declare dso_local i32* @lappend(i32*, i32) #2

declare dso_local i32 @make_hba_token(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
