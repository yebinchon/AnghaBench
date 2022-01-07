; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-connect.c_conninfo_uri_decode.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-connect.c_conninfo_uri_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"invalid percent-encoded token: \22%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"forbidden value %%00 in percent-encoded value: \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @conninfo_uri_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @conninfo_uri_decode(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i8*, i8** %4, align 8
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @strlen(i8* %13)
  %15 = add nsw i64 %14, 1
  %16 = call i8* @malloc(i64 %15)
  store i8* %16, i8** %6, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @libpq_gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 (i32, i32, ...) @printfPQExpBuffer(i32 %20, i32 %21)
  store i8* null, i8** %3, align 8
  br label %84

23:                                               ; preds = %2
  %24 = load i8*, i8** %6, align 8
  store i8* %24, i8** %7, align 8
  br label %25

25:                                               ; preds = %81, %23
  %26 = load i8*, i8** %8, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 37
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %8, align 8
  %33 = load i8, i8* %31, align 1
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %7, align 8
  store i8 %33, i8* %34, align 1
  %36 = icmp ne i8 %33, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  br label %82

38:                                               ; preds = %30
  br label %81

39:                                               ; preds = %25
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %8, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %8, align 8
  %44 = load i8, i8* %42, align 1
  %45 = sext i8 %44 to i32
  %46 = call i64 @get_hexdigit(i32 %45, i32* %9)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %39
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %8, align 8
  %51 = load i8, i8* %49, align 1
  %52 = sext i8 %51 to i32
  %53 = call i64 @get_hexdigit(i32 %52, i32* %10)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %48, %39
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @libpq_gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 (i32, i32, ...) @printfPQExpBuffer(i32 %56, i32 %57, i8* %58)
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @free(i8* %60)
  store i8* null, i8** %3, align 8
  br label %84

62:                                               ; preds = %48
  %63 = load i32, i32* %9, align 4
  %64 = shl i32 %63, 4
  %65 = load i32, i32* %10, align 4
  %66 = or i32 %64, %65
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %62
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @libpq_gettext(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i8*, i8** %4, align 8
  %73 = call i32 (i32, i32, ...) @printfPQExpBuffer(i32 %70, i32 %71, i8* %72)
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 @free(i8* %74)
  store i8* null, i8** %3, align 8
  br label %84

76:                                               ; preds = %62
  %77 = load i32, i32* %11, align 4
  %78 = trunc i32 %77 to i8
  %79 = load i8*, i8** %7, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %7, align 8
  store i8 %78, i8* %79, align 1
  br label %81

81:                                               ; preds = %76, %38
  br label %25

82:                                               ; preds = %37
  %83 = load i8*, i8** %6, align 8
  store i8* %83, i8** %3, align 8
  br label %84

84:                                               ; preds = %82, %69, %55, %19
  %85 = load i8*, i8** %3, align 8
  ret i8* %85
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @printfPQExpBuffer(i32, i32, ...) #1

declare dso_local i32 @libpq_gettext(i8*) #1

declare dso_local i64 @get_hexdigit(i32, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
