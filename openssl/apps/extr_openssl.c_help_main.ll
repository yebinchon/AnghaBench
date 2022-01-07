; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_openssl.c_help_main.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_openssl.c_help_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32* }
%struct.TYPE_7__ = type { i32, i32 }

@help_options = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Usage: %s\0A\00", align 1
@functions = common dso_local global %struct.TYPE_6__* null, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"Standard commands\00", align 1
@FT_none = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@FT_md = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [68 x i8] c"\0AMessage Digest commands (see the `dgst' command for more details)\0A\00", align 1
@FT_cipher = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [59 x i8] c"\0ACipher commands (see the `enc' command for more details)\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%-*s\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @help_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__, align 4
  %13 = alloca [3 x i8*], align 16
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = load i32, i32* @help_options, align 4
  %17 = call i8* @opt_init(i32 %14, i8** %15, i32 %16)
  store i8* %17, i8** %10, align 8
  br label %18

18:                                               ; preds = %30, %2
  %19 = call i32 (...) @opt_next()
  store i32 %19, i32* %11, align 4
  %20 = icmp ne i32 %19, 130
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = load i32, i32* %11, align 4
  switch i32 %22, label %30 [
    i32 129, label %23
    i32 130, label %23
    i32 128, label %27
  ]

23:                                               ; preds = %21, %21
  %24 = load i32, i32* @bio_err, align 4
  %25 = load i8*, i8** %10, align 8
  %26 = call i32 (i32, i8*, ...) @BIO_printf(i32 %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %25)
  store i32 1, i32* %3, align 4
  br label %118

27:                                               ; preds = %21
  %28 = load i32, i32* @help_options, align 4
  %29 = call i32 @opt_help(i32 %28)
  store i32 0, i32* %3, align 4
  br label %118

30:                                               ; preds = %21
  br label %18

31:                                               ; preds = %18
  %32 = call i32 (...) @opt_num_rest()
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = call i8** (...) @opt_rest()
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds [3 x i8*], [3 x i8*]* %13, i64 0, i64 0
  store i8* %37, i8** %38, align 16
  %39 = getelementptr inbounds [3 x i8*], [3 x i8*]* %13, i64 0, i64 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %39, align 8
  %40 = getelementptr inbounds [3 x i8*], [3 x i8*]* %13, i64 0, i64 2
  store i8* null, i8** %40, align 16
  %41 = call i32 (...) @prog_init()
  %42 = getelementptr inbounds [3 x i8*], [3 x i8*]* %13, i64 0, i64 0
  %43 = call i32 @do_cmd(i32 %41, i32 2, i8** %42)
  store i32 %43, i32* %3, align 4
  br label %118

44:                                               ; preds = %31
  %45 = call i32 (...) @opt_num_rest()
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32, i32* @bio_err, align 4
  %49 = load i8*, i8** %10, align 8
  %50 = call i32 (i32, i8*, ...) @BIO_printf(i32 %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  store i32 1, i32* %3, align 4
  br label %118

51:                                               ; preds = %44
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** @functions, align 8
  %53 = call i32 @calculate_columns(%struct.TYPE_6__* %52, %struct.TYPE_7__* %12)
  %54 = load i32, i32* @bio_err, align 4
  %55 = call i32 (i32, i8*, ...) @BIO_printf(i32 %54, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  %56 = load i64, i64* @FT_none, align 8
  store i64 %56, i64* %9, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** @functions, align 8
  store %struct.TYPE_6__* %57, %struct.TYPE_6__** %6, align 8
  br label %58

58:                                               ; preds = %112, %51
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %115

63:                                               ; preds = %58
  store i32 0, i32* %8, align 4
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = srem i32 %64, %67
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load i32, i32* @bio_err, align 4
  %72 = call i32 (i32, i8*, ...) @BIO_printf(i32 %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %73

73:                                               ; preds = %70, %63
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %9, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %104

79:                                               ; preds = %73
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %9, align 8
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %79
  %86 = load i32, i32* @bio_err, align 4
  %87 = call i32 (i32, i8*, ...) @BIO_printf(i32 %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %88

88:                                               ; preds = %85, %79
  %89 = load i64, i64* %9, align 8
  %90 = load i64, i64* @FT_md, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  store i32 1, i32* %7, align 4
  %93 = load i32, i32* @bio_err, align 4
  %94 = call i32 (i32, i8*, ...) @BIO_printf(i32 %93, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i64 0, i64 0))
  br label %103

95:                                               ; preds = %88
  %96 = load i64, i64* %9, align 8
  %97 = load i64, i64* @FT_cipher, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  store i32 1, i32* %7, align 4
  %100 = load i32, i32* @bio_err, align 4
  %101 = call i32 (i32, i8*, ...) @BIO_printf(i32 %100, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0))
  br label %102

102:                                              ; preds = %99, %95
  br label %103

103:                                              ; preds = %102, %92
  br label %104

104:                                              ; preds = %103, %73
  %105 = load i32, i32* @bio_err, align 4
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 (i32, i8*, ...) @BIO_printf(i32 %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %107, i32* %110)
  br label %112

112:                                              ; preds = %104
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 1
  store %struct.TYPE_6__* %114, %struct.TYPE_6__** %6, align 8
  br label %58

115:                                              ; preds = %58
  %116 = load i32, i32* @bio_err, align 4
  %117 = call i32 (i32, i8*, ...) @BIO_printf(i32 %116, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %115, %47, %34, %27, %23
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i8* @opt_init(i32, i8**, i32) #1

declare dso_local i32 @opt_next(...) #1

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i32 @opt_help(i32) #1

declare dso_local i32 @opt_num_rest(...) #1

declare dso_local i8** @opt_rest(...) #1

declare dso_local i32 @do_cmd(i32, i32, i8**) #1

declare dso_local i32 @prog_init(...) #1

declare dso_local i32 @calculate_columns(%struct.TYPE_6__*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
