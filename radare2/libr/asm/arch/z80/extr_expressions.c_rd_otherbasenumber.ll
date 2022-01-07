; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/z80/extr_expressions.c_rd_otherbasenumber.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/z80/extr_expressions.c_rd_otherbasenumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@verbose = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"%5d (0x%04x): Starting to read basenumber (string=%s).\0A\00", align 1
@stack = common dso_local global %struct.TYPE_2__* null, align 8
@sp = common dso_local global i64 0, align 8
@addr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"unexpected end of line after `@'\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"base must be between 1 and z\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32*, i32)* @rd_otherbasenumber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rd_otherbasenumber(i8** %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store i8** %0, i8*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @verbose, align 4
  %10 = icmp sge i32 %9, 6
  br i1 %10, label %11, label %22

11:                                               ; preds = %3
  %12 = load i32, i32* @stderr, align 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stack, align 8
  %14 = load i64, i64* @sp, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @addr, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18, i8* %20)
  br label %22

22:                                               ; preds = %11, %3
  %23 = load i8**, i8*** %5, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %23, align 8
  %26 = load i8**, i8*** %5, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = load i8, i8* %27, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %22
  %31 = load i32*, i32** %6, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32*, i32** %6, align 8
  store i32 0, i32* %34, align 4
  br label %41

35:                                               ; preds = %30
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = call i32 @printerr(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %35
  br label %41

41:                                               ; preds = %40, %33
  store i32 0, i32* %4, align 4
  br label %95

42:                                               ; preds = %22
  %43 = load i8**, i8*** %5, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 48
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load i8**, i8*** %5, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = load i8, i8* %50, align 1
  %52 = call i32 @isalnum(i8 zeroext %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %48, %42
  %55 = load i32*, i32** %6, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32*, i32** %6, align 8
  store i32 0, i32* %58, align 4
  br label %65

59:                                               ; preds = %54
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = call i32 @printerr(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %59
  br label %65

65:                                               ; preds = %64, %57
  store i32 0, i32* %4, align 4
  br label %95

66:                                               ; preds = %48
  %67 = load i8**, i8*** %5, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = load i8, i8* %68, align 1
  store i8 %69, i8* %8, align 1
  %70 = load i8**, i8*** %5, align 8
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %70, align 8
  %73 = load i8**, i8*** %5, align 8
  %74 = load i8*, i8** %73, align 8
  %75 = load i8, i8* %74, align 1
  %76 = call i64 @isalpha(i8 zeroext %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %66
  %79 = load i8**, i8*** %5, align 8
  %80 = load i8, i8* %8, align 1
  %81 = call signext i8 @tolower(i8 zeroext %80)
  %82 = sext i8 %81 to i32
  %83 = sub nsw i32 %82, 97
  %84 = add nsw i32 %83, 1
  %85 = trunc i32 %84 to i8
  %86 = call i32 @rd_number(i8** %79, i32* null, i8 signext %85)
  store i32 %86, i32* %4, align 4
  br label %95

87:                                               ; preds = %66
  %88 = load i8**, i8*** %5, align 8
  %89 = load i8, i8* %8, align 1
  %90 = sext i8 %89 to i32
  %91 = sub nsw i32 %90, 48
  %92 = add nsw i32 %91, 1
  %93 = trunc i32 %92 to i8
  %94 = call i32 @rd_number(i8** %88, i32* null, i8 signext %93)
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %87, %78, %65, %41
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @printerr(i32, i8*) #1

declare dso_local i32 @isalnum(i8 zeroext) #1

declare dso_local i64 @isalpha(i8 zeroext) #1

declare dso_local i32 @rd_number(i8**, i32*, i8 signext) #1

declare dso_local signext i8 @tolower(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
