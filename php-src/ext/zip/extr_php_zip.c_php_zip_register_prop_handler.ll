; ModuleID = '/home/carl/AnghaBench/php-src/ext/zip/extr_php_zip.c_php_zip_register_prop_handler.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/zip/extr_php_zip.c_php_zip_register_prop_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@zip_class_entry = common dso_local global i32 0, align 4
@ZEND_ACC_PUBLIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32, i32, i32, i32)* @php_zip_register_prop_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @php_zip_register_prop_handler(i32* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_3__, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* %10, align 4
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 3
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %9, align 4
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %11, align 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %12, align 4
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @strlen(i8* %25)
  %27 = call i32* @zend_string_init_interned(i8* %24, i32 %26, i32 1)
  store i32* %27, i32** %14, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i32*, i32** %14, align 8
  %30 = call i32 @zend_hash_add_mem(i32* %28, i32* %29, %struct.TYPE_3__* %13, i32 16)
  %31 = call i32 @ZVAL_NULL(i32* %15)
  %32 = load i32, i32* @zip_class_entry, align 4
  %33 = load i32*, i32** %14, align 8
  %34 = load i32, i32* @ZEND_ACC_PUBLIC, align 4
  %35 = call i32 @zend_declare_property_ex(i32 %32, i32* %33, i32* %15, i32 %34, i32* null)
  %36 = load i32*, i32** %14, align 8
  %37 = call i32 @zend_string_release_ex(i32* %36, i32 1)
  ret void
}

declare dso_local i32* @zend_string_init_interned(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @zend_hash_add_mem(i32*, i32*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @ZVAL_NULL(i32*) #1

declare dso_local i32 @zend_declare_property_ex(i32, i32*, i32*, i32, i32*) #1

declare dso_local i32 @zend_string_release_ex(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
