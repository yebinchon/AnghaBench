; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_crypto.c_print_cipher.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_crypto.c_print_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c" by default\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"%s  (%d bit key%s, \00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"stream cipher\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"%d bit block\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c", TLS client/server mode only\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_cipher(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i64 @cipher_kt_var_key_size(i32* %4)
  %6 = icmp ne i64 %5, 0
  %7 = zext i1 %6 to i64
  %8 = select i1 %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  store i8* %8, i8** %3, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @cipher_kt_name(i32* %9)
  %11 = call i8* @translate_cipher_name_to_openvpn(i32 %10)
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @cipher_kt_key_size(i32* %12)
  %14 = mul nsw i32 %13, 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %11, i32 %14, i8* %15)
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @cipher_kt_block_size(i32* %17)
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %27

22:                                               ; preds = %1
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @cipher_kt_block_size(i32* %23)
  %25 = mul nsw i32 %24, 8
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %22, %20
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @cipher_kt_mode_cbc(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %27
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i64 @cipher_kt_var_key_size(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @translate_cipher_name_to_openvpn(i32) #1

declare dso_local i32 @cipher_kt_name(i32*) #1

declare dso_local i32 @cipher_kt_key_size(i32*) #1

declare dso_local i32 @cipher_kt_block_size(i32*) #1

declare dso_local i32 @cipher_kt_mode_cbc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
