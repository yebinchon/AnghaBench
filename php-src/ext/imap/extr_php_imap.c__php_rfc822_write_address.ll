; ModuleID = '/home/carl/AnghaBench/php-src/ext/imap/extr_php_imap.c__php_rfc822_write_address.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/imap/extr_php_imap.c__php_rfc822_write_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SENDBUFLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Address buffer overflow\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @_php_rfc822_write_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @_php_rfc822_write_address(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32, i32* @SENDBUFLEN, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %4, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %5, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @_php_imap_address_size(i32* %11)
  %13 = load i32, i32* @SENDBUFLEN, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i32 @zend_throw_error(i32* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  store i32 1, i32* %6, align 4
  br label %23

17:                                               ; preds = %1
  %18 = getelementptr inbounds i8, i8* %10, i64 0
  store i8 0, i8* %18, align 16
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @rfc822_write_address(i8* %10, i32* %19)
  %21 = call i32 @strlen(i8* %10)
  %22 = call i32* @zend_string_init(i8* %10, i32 %21, i32 0)
  store i32* %22, i32** %2, align 8
  store i32 1, i32* %6, align 4
  br label %23

23:                                               ; preds = %17, %15
  %24 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %24)
  %25 = load i32*, i32** %2, align 8
  ret i32* %25
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @_php_imap_address_size(i32*) #2

declare dso_local i32 @zend_throw_error(i32*, i8*) #2

declare dso_local i32 @rfc822_write_address(i8*, i32*) #2

declare dso_local i32* @zend_string_init(i8*, i32, i32) #2

declare dso_local i32 @strlen(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
