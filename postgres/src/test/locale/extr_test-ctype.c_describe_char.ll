; ModuleID = '/home/carl/AnghaBench/postgres/src/test/locale/extr_test-ctype.c_describe_char.c'
source_filename = "/home/carl/AnghaBench/postgres/src/test/locale/extr_test-ctype.c_describe_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [52 x i8] c"chr#%-4d%2c%6s%6s%6s%6s%6s%6s%6s%6s%6s%6s%6s%4c%4c\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @describe_char(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = trunc i32 %6 to i8
  store i8 %7, i8* %3, align 1
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @toupper(i32 %8) #3
  %10 = trunc i32 %9 to i8
  store i8 %10, i8* %4, align 1
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @tolower(i32 %11) #3
  %13 = trunc i32 %12 to i8
  store i8 %13, i8* %5, align 1
  %14 = load i8, i8* %3, align 1
  %15 = zext i8 %14 to i32
  %16 = call i32 @isprint(i32 %15) #3
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i8 32, i8* %3, align 1
  br label %19

19:                                               ; preds = %18, %1
  %20 = load i8, i8* %4, align 1
  %21 = zext i8 %20 to i32
  %22 = call i32 @isprint(i32 %21) #3
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i8 32, i8* %4, align 1
  br label %25

25:                                               ; preds = %24, %19
  %26 = load i8, i8* %5, align 1
  %27 = zext i8 %26 to i32
  %28 = call i32 @isprint(i32 %27) #3
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store i8 32, i8* %5, align 1
  br label %31

31:                                               ; preds = %30, %25
  %32 = load i32, i32* %2, align 4
  %33 = load i8, i8* %3, align 1
  %34 = zext i8 %33 to i32
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @isalnum(i32 %35) #3
  %37 = call i32 (i32, ...) bitcast (i32 (...)* @flag to i32 (i32, ...)*)(i32 %36)
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @isalpha(i32 %38) #3
  %40 = call i32 (i32, ...) bitcast (i32 (...)* @flag to i32 (i32, ...)*)(i32 %39)
  %41 = load i32, i32* %2, align 4
  %42 = call i32 @iscntrl(i32 %41) #3
  %43 = call i32 (i32, ...) bitcast (i32 (...)* @flag to i32 (i32, ...)*)(i32 %42)
  %44 = load i32, i32* %2, align 4
  %45 = call i32 @isdigit(i32 %44) #3
  %46 = call i32 (i32, ...) bitcast (i32 (...)* @flag to i32 (i32, ...)*)(i32 %45)
  %47 = load i32, i32* %2, align 4
  %48 = call i32 @islower(i32 %47) #3
  %49 = call i32 (i32, ...) bitcast (i32 (...)* @flag to i32 (i32, ...)*)(i32 %48)
  %50 = load i32, i32* %2, align 4
  %51 = call i32 @isgraph(i32 %50) #3
  %52 = call i32 (i32, ...) bitcast (i32 (...)* @flag to i32 (i32, ...)*)(i32 %51)
  %53 = load i32, i32* %2, align 4
  %54 = call i32 @isprint(i32 %53) #3
  %55 = call i32 (i32, ...) bitcast (i32 (...)* @flag to i32 (i32, ...)*)(i32 %54)
  %56 = load i32, i32* %2, align 4
  %57 = call i32 @ispunct(i32 %56) #3
  %58 = call i32 (i32, ...) bitcast (i32 (...)* @flag to i32 (i32, ...)*)(i32 %57)
  %59 = load i32, i32* %2, align 4
  %60 = call i32 @isspace(i32 %59) #3
  %61 = call i32 (i32, ...) bitcast (i32 (...)* @flag to i32 (i32, ...)*)(i32 %60)
  %62 = load i32, i32* %2, align 4
  %63 = call i32 @isupper(i32 %62) #3
  %64 = call i32 (i32, ...) bitcast (i32 (...)* @flag to i32 (i32, ...)*)(i32 %63)
  %65 = load i32, i32* %2, align 4
  %66 = call i32 @isxdigit(i32 %65) #3
  %67 = call i32 (i32, ...) bitcast (i32 (...)* @flag to i32 (i32, ...)*)(i32 %66)
  %68 = load i8, i8* %5, align 1
  %69 = zext i8 %68 to i32
  %70 = load i8, i8* %4, align 1
  %71 = zext i8 %70 to i32
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %34, i32 %37, i32 %40, i32 %43, i32 %46, i32 %49, i32 %52, i32 %55, i32 %58, i32 %61, i32 %64, i32 %67, i32 %69, i32 %71)
  ret void
}

; Function Attrs: nounwind readonly
declare dso_local i32 @toupper(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @tolower(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isprint(i32) #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @flag(...) #2

; Function Attrs: nounwind readonly
declare dso_local i32 @isalnum(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isalpha(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @iscntrl(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isdigit(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @islower(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isgraph(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @ispunct(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isspace(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isupper(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isxdigit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
