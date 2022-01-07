; ModuleID = '/home/carl/AnghaBench/php-src/ext/imap/extr_php_imap.c_add_assoc_object.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/imap/extr_php_imap.c_add_assoc_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IS_OBJECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32*)* @add_assoc_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @add_assoc_object(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i64 @Z_TYPE_P(i32* %8)
  %10 = load i64, i64* @IS_OBJECT, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32*, i32** %4, align 8
  %14 = call i32* @Z_OBJPROP_P(i32* %13)
  store i32* %14, i32** %7, align 8
  br label %18

15:                                               ; preds = %3
  %16 = load i32*, i32** %4, align 8
  %17 = call i32* @Z_ARRVAL_P(i32* %16)
  store i32* %17, i32** %7, align 8
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i32*, i32** %7, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = load i32*, i32** %6, align 8
  %24 = call i32* @zend_hash_str_update(i32* %19, i8* %20, i32 %22, i32* %23)
  ret i32* %24
}

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i32* @Z_OBJPROP_P(i32*) #1

declare dso_local i32* @Z_ARRVAL_P(i32*) #1

declare dso_local i32* @zend_hash_str_update(i32*, i8*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
