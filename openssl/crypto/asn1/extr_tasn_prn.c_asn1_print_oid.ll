; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_tasn_prn.c_asn1_print_oid.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_tasn_prn.c_asn1_print_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%s (%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @asn1_print_oid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asn1_print_oid(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [80 x i8], align 16
  %7 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i32 @OBJ_obj2nid(i32* %8)
  %10 = call i8* @OBJ_nid2ln(i32 %9)
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %14

14:                                               ; preds = %13, %2
  %15 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @OBJ_obj2txt(i8* %15, i32 80, i32* %16, i32 1)
  %18 = load i32*, i32** %4, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %21 = call i64 @BIO_printf(i32* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %19, i8* %20)
  %22 = icmp sle i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %25

24:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %25

25:                                               ; preds = %24, %23
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i8* @OBJ_nid2ln(i32) #1

declare dso_local i32 @OBJ_obj2nid(i32*) #1

declare dso_local i32 @OBJ_obj2txt(i8*, i32, i32*, i32) #1

declare dso_local i64 @BIO_printf(i32*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
