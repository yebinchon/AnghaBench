; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_s_client.c_next_proto_cb.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_s_client.c_next_proto_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@c_quiet = common dso_local global i32 0, align 4
@bio_c_out = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Protocols advertised by server: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SSL_TLSEXT_ERR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i8*, i8*, i32, i8*)* @next_proto_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @next_proto_cb(i32* %0, i8** %1, i8* %2, i8* %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_2__*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %15 = load i8*, i8** %12, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %13, align 8
  %17 = load i32, i32* @c_quiet, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %58, label %19

19:                                               ; preds = %6
  %20 = load i32, i32* @bio_c_out, align 4
  %21 = call i32 @BIO_printf(i32 %20, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %14, align 4
  br label %22

22:                                               ; preds = %32, %19
  %23 = load i32, i32* %14, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %55

26:                                               ; preds = %22
  %27 = load i32, i32* %14, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* @bio_c_out, align 4
  %31 = call i32 (i32, ...) @BIO_write(i32 %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32, i32* @bio_c_out, align 4
  %34 = load i8*, i8** %10, align 8
  %35 = load i32, i32* %14, align 4
  %36 = add i32 %35, 1
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  %39 = load i8*, i8** %10, align 8
  %40 = load i32, i32* %14, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = call i32 (i32, ...) @BIO_write(i32 %33, i8* %38, i32 %44)
  %46 = load i8*, i8** %10, align 8
  %47 = load i32, i32* %14, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = add nsw i32 %51, 1
  %53 = load i32, i32* %14, align 4
  %54 = add i32 %53, %52
  store i32 %54, i32* %14, align 4
  br label %22

55:                                               ; preds = %22
  %56 = load i32, i32* @bio_c_out, align 4
  %57 = call i32 (i32, ...) @BIO_write(i32 %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  br label %58

58:                                               ; preds = %55, %6
  %59 = load i8**, i8*** %8, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @SSL_select_next_proto(i8** %59, i8* %60, i8* %61, i32 %62, i32 %65, i32 %68)
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @SSL_TLSEXT_ERR_OK, align 4
  ret i32 %72
}

declare dso_local i32 @BIO_printf(i32, i8*) #1

declare dso_local i32 @BIO_write(i32, ...) #1

declare dso_local i32 @SSL_select_next_proto(i8**, i8*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
