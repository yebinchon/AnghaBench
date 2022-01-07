; ModuleID = '/home/carl/AnghaBench/openssl/apps/lib/extr_s_cb.c_do_print_sigalgs.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/lib/extr_s_cb.c_do_print_sigalgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"Shared \00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Requested \00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Signature Algorithms: \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"0x%02X\00", align 1
@NID_undef = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"+%s\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"+0x%02X\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @do_print_sigalgs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_print_sigalgs(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = call i64 @SSL_is_server(i32* %16)
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 0, i32 1
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @SSL_get_shared_sigalgs(i32* %24, i32 0, i32* null, i32* null, i32* null, i8* null, i8* null)
  store i32 %25, i32* %9, align 4
  br label %29

26:                                               ; preds = %3
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @SSL_get_sigalgs(i32* %27, i32 -1, i32* null, i32* null, i32* null, i8* null, i8* null)
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 1, i32* %4, align 4
  br label %108

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @BIO_puts(i32* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @BIO_puts(i32* %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @BIO_puts(i32* %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %102, %45
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %105

52:                                               ; preds = %48
  store i8* null, i8** %15, align 8
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @SSL_get_shared_sigalgs(i32* %56, i32 %57, i32* %12, i32* %11, i32* null, i8* %14, i8* %13)
  br label %63

59:                                               ; preds = %52
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @SSL_get_sigalgs(i32* %60, i32 %61, i32* %12, i32* %11, i32* null, i8* %14, i8* %13)
  br label %63

63:                                               ; preds = %59, %55
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32*, i32** %5, align 8
  %68 = call i32 @BIO_puts(i32* %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i32, i32* %12, align 4
  %71 = call i8* @get_sigtype(i32 %70)
  store i8* %71, i8** %15, align 8
  %72 = load i8*, i8** %15, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load i32*, i32** %5, align 8
  %76 = load i8*, i8** %15, align 8
  %77 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %76)
  br label %83

78:                                               ; preds = %69
  %79 = load i32*, i32** %5, align 8
  %80 = load i8, i8* %14, align 1
  %81 = zext i8 %80 to i32
  %82 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %78, %74
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* @NID_undef, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load i32*, i32** %5, align 8
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @OBJ_nid2sn(i32 %89)
  %91 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %88, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %90)
  br label %101

92:                                               ; preds = %83
  %93 = load i8*, i8** %15, align 8
  %94 = icmp eq i8* %93, null
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = load i32*, i32** %5, align 8
  %97 = load i8, i8* %13, align 1
  %98 = zext i8 %97 to i32
  %99 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %96, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %95, %92
  br label %101

101:                                              ; preds = %100, %87
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %8, align 4
  br label %48

105:                                              ; preds = %48
  %106 = load i32*, i32** %5, align 8
  %107 = call i32 @BIO_puts(i32* %106, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %108

108:                                              ; preds = %105, %32
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i64 @SSL_is_server(i32*) #1

declare dso_local i32 @SSL_get_shared_sigalgs(i32*, i32, i32*, i32*, i32*, i8*, i8*) #1

declare dso_local i32 @SSL_get_sigalgs(i32*, i32, i32*, i32*, i32*, i8*, i8*) #1

declare dso_local i32 @BIO_puts(i32*, i8*) #1

declare dso_local i8* @get_sigtype(i32) #1

declare dso_local i32 @BIO_printf(i32*, i8*, ...) #1

declare dso_local i32 @OBJ_nid2sn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
