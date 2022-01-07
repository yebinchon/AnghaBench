; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_regis.c_RS_isRegis.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_regis.c_RS_isRegis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RS_IN_WAIT = common dso_local global i32 0, align 4
@RS_IN_ONEOF = common dso_local global i32 0, align 4
@RS_IN_NONEOF = common dso_local global i32 0, align 4
@RS_IN_ONEOF_IN = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"internal error in RS_isRegis: state %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RS_isRegis(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i32, i32* @RS_IN_WAIT, align 4
  store i32 %6, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  store i8* %7, i8** %5, align 8
  br label %8

8:                                                ; preds = %77, %1
  %9 = load i8*, i8** %5, align 8
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %12, label %83

12:                                               ; preds = %8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @RS_IN_WAIT, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %12
  %17 = load i8*, i8** %5, align 8
  %18 = call i64 @t_isalpha(i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %29

21:                                               ; preds = %16
  %22 = load i8*, i8** %5, align 8
  %23 = call i64 @t_iseq(i8* %22, i8 signext 91)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @RS_IN_ONEOF, align 4
  store i32 %26, i32* %4, align 4
  br label %28

27:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %88

28:                                               ; preds = %25
  br label %29

29:                                               ; preds = %28, %20
  br label %77

30:                                               ; preds = %12
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @RS_IN_ONEOF, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %30
  %35 = load i8*, i8** %5, align 8
  %36 = call i64 @t_iseq(i8* %35, i8 signext 94)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @RS_IN_NONEOF, align 4
  store i32 %39, i32* %4, align 4
  br label %48

40:                                               ; preds = %34
  %41 = load i8*, i8** %5, align 8
  %42 = call i64 @t_isalpha(i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @RS_IN_ONEOF_IN, align 4
  store i32 %45, i32* %4, align 4
  br label %47

46:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %88

47:                                               ; preds = %44
  br label %48

48:                                               ; preds = %47, %38
  br label %76

49:                                               ; preds = %30
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @RS_IN_ONEOF_IN, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @RS_IN_NONEOF, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %71

57:                                               ; preds = %53, %49
  %58 = load i8*, i8** %5, align 8
  %59 = call i64 @t_isalpha(i8* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %70

62:                                               ; preds = %57
  %63 = load i8*, i8** %5, align 8
  %64 = call i64 @t_iseq(i8* %63, i8 signext 93)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i32, i32* @RS_IN_WAIT, align 4
  store i32 %67, i32* %4, align 4
  br label %69

68:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  br label %88

69:                                               ; preds = %66
  br label %70

70:                                               ; preds = %69, %61
  br label %75

71:                                               ; preds = %53
  %72 = load i32, i32* @ERROR, align 4
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @elog(i32 %72, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %71, %70
  br label %76

76:                                               ; preds = %75, %48
  br label %77

77:                                               ; preds = %76, %29
  %78 = load i8*, i8** %5, align 8
  %79 = call i32 @pg_mblen(i8* %78)
  %80 = load i8*, i8** %5, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  store i8* %82, i8** %5, align 8
  br label %8

83:                                               ; preds = %8
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @RS_IN_WAIT, align 4
  %86 = icmp eq i32 %84, %85
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %83, %68, %46, %27
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i64 @t_isalpha(i8*) #1

declare dso_local i64 @t_iseq(i8*, i8 signext) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @pg_mblen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
