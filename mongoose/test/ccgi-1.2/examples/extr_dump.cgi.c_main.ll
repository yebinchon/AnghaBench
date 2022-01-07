; ModuleID = '/home/carl/AnghaBench/mongoose/test/ccgi-1.2/examples/extr_dump.cgi.c_main.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/ccgi-1.2/examples/extr_dump.cgi.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"Content-type: text/plain\0D\0A\0D\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Environment:\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"/tmp/cgi-upload-XXXXXX\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"CGI_get_all() failed\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"\0D\0ACGI Variables:\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"%s [%d] >>%s<<\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  %12 = load i32, i32* @stdout, align 4
  %13 = call i32 @fputs(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @stdout, align 4
  %15 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %33, %3
  %17 = load i8**, i8*** %7, align 8
  %18 = load i32, i32* %11, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8*, i8** %17, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %36

23:                                               ; preds = %16
  %24 = load i8**, i8*** %7, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = load i32, i32* @stdout, align 4
  %30 = call i32 @fputs(i8* %28, i32 %29)
  %31 = load i32, i32* @stdout, align 4
  %32 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %23
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %11, align 4
  br label %16

36:                                               ; preds = %16
  %37 = call i32* @CGI_get_all(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  store i32* %37, i32** %8, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* @stdout, align 4
  %41 = call i32 @fputs(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %40)
  store i32 0, i32* %4, align 4
  br label %79

42:                                               ; preds = %36
  %43 = load i32, i32* @stdout, align 4
  %44 = call i32 @fputs(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %43)
  %45 = load i32*, i32** %8, align 8
  %46 = call i8* @CGI_first_name(i32* %45)
  store i8* %46, i8** %9, align 8
  br label %47

47:                                               ; preds = %73, %42
  %48 = load i8*, i8** %9, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %76

50:                                               ; preds = %47
  %51 = load i32*, i32** %8, align 8
  %52 = call i64* @CGI_lookup_all(i32* %51, i32 0)
  store i64* %52, i64** %10, align 8
  store i32 0, i32* %11, align 4
  br label %53

53:                                               ; preds = %69, %50
  %54 = load i64*, i64** %10, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %53
  %61 = load i8*, i8** %9, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load i64*, i64** %10, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* %61, i32 %62, i64 %67)
  br label %69

69:                                               ; preds = %60
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %11, align 4
  br label %53

72:                                               ; preds = %53
  br label %73

73:                                               ; preds = %72
  %74 = load i32*, i32** %8, align 8
  %75 = call i8* @CGI_next_name(i32* %74)
  store i8* %75, i8** %9, align 8
  br label %47

76:                                               ; preds = %47
  %77 = load i32*, i32** %8, align 8
  %78 = call i32 @CGI_free_varlist(i32* %77)
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %76, %39
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32* @CGI_get_all(i8*) #1

declare dso_local i8* @CGI_first_name(i32*) #1

declare dso_local i64* @CGI_lookup_all(i32*, i32) #1

declare dso_local i32 @printf(i8*, i8*, i32, i64) #1

declare dso_local i8* @CGI_next_name(i32*) #1

declare dso_local i32 @CGI_free_varlist(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
