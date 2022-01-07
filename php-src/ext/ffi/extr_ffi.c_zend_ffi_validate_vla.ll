; ModuleID = '/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi.c_zend_ffi_validate_vla.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi.c_zend_ffi_validate_vla.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@allow_vla = common dso_local global i32 0, align 4
@ZEND_FFI_ATTR_VLA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"'[*]' not allowed in other than function prototype scope at line %d\00", align 1
@line = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @zend_ffi_validate_vla to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zend_ffi_validate_vla(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %4 = load i32, i32* @allow_vla, align 4
  %5 = call i32 @FFI_G(i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @ZEND_FFI_ATTR_VLA, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %7
  %15 = load i32, i32* @line, align 4
  %16 = call i32 @FFI_G(i32 %15)
  %17 = call i32 @zend_ffi_throw_parser_error(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @FAILURE, align 4
  store i32 %18, i32* %2, align 4
  br label %21

19:                                               ; preds = %7, %1
  %20 = load i32, i32* @SUCCESS, align 4
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %19, %14
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @FFI_G(i32) #1

declare dso_local i32 @zend_ffi_throw_parser_error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
