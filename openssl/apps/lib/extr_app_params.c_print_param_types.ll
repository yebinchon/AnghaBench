; ModuleID = '/home/carl/AnghaBench/openssl/apps/lib/extr_app_params.c_print_param_types.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/lib/extr_app_params.c_print_param_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@bio_out = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%*sNo declared %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"%*sEmpty list of %s (!!!)\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%*s%s:\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%*s  %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @print_param_types(i8* %0, %struct.TYPE_4__* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [200 x i8], align 16
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %9 = icmp eq %struct.TYPE_4__* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load i32, i32* @bio_out, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @BIO_printf(i32 %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %12, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  br label %48

15:                                               ; preds = %3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load i32, i32* @bio_out, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @BIO_printf(i32 %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %22, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  br label %47

25:                                               ; preds = %15
  %26 = load i32, i32* @bio_out, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @BIO_printf(i32 %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %27, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %43, %25
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = getelementptr inbounds [200 x i8], [200 x i8]* %7, i64 0, i64 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %38 = call i32 @describe_param_type(i8* %36, i32 200, %struct.TYPE_4__* %37)
  %39 = load i32, i32* @bio_out, align 4
  %40 = load i32, i32* %6, align 4
  %41 = getelementptr inbounds [200 x i8], [200 x i8]* %7, i64 0, i64 0
  %42 = call i32 @BIO_printf(i32 %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %40, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %35
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 1
  store %struct.TYPE_4__* %45, %struct.TYPE_4__** %5, align 8
  br label %30

46:                                               ; preds = %30
  br label %47

47:                                               ; preds = %46, %20
  br label %48

48:                                               ; preds = %47, %10
  ret i32 1
}

declare dso_local i32 @BIO_printf(i32, i8*, i32, i8*, i8*) #1

declare dso_local i32 @describe_param_type(i8*, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
