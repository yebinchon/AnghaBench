; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_indexcmds.c_ChooseRelationName.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_indexcmds.c_ChooseRelationName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NAMEDATALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ChooseRelationName(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i8* null, i8** %12, align 8
  %15 = load i32, i32* @NAMEDATALEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %13, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %14, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = trunc i64 %16 to i32
  %21 = call i32 @StrNCpy(i8* %18, i8* %19, i32 %20)
  br label %22

22:                                               ; preds = %41, %5
  %23 = load i8*, i8** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i8* @makeObjectName(i8* %23, i8* %24, i8* %18)
  store i8* %25, i8** %12, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @get_relname_relid(i8* %26, i32 %27)
  %29 = call i32 @OidIsValid(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i8*, i8** %12, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @ConstraintNameExists(i8* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34, %31
  br label %49

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40, %22
  %42 = load i8*, i8** %12, align 8
  %43 = call i32 @pfree(i8* %42)
  %44 = trunc i64 %16 to i32
  %45 = load i8*, i8** %8, align 8
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %11, align 4
  %48 = call i32 @snprintf(i8* %18, i32 %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %45, i32 %47)
  br label %22

49:                                               ; preds = %39
  %50 = load i8*, i8** %12, align 8
  %51 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %51)
  ret i8* %50
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @StrNCpy(i8*, i8*, i32) #2

declare dso_local i8* @makeObjectName(i8*, i8*, i8*) #2

declare dso_local i32 @OidIsValid(i32) #2

declare dso_local i32 @get_relname_relid(i8*, i32) #2

declare dso_local i32 @ConstraintNameExists(i8*, i32) #2

declare dso_local i32 @pfree(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
