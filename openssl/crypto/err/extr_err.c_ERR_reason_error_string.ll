; ModuleID = '/home/carl/AnghaBench/openssl/crypto/err/extr_err.c_ERR_reason_error_string.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/err/extr_err.c_ERR_reason_error_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8* }

@err_string_init = common dso_local global i32 0, align 4
@do_err_strings_init = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ERR_reason_error_string(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  %8 = load i32, i32* @do_err_strings_init, align 4
  %9 = call i32 @RUN_ONCE(i32* @err_string_init, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %39

12:                                               ; preds = %1
  %13 = load i64, i64* %3, align 8
  %14 = call i64 @ERR_GET_LIB(i64 %13)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %3, align 8
  %16 = call i64 @ERR_GET_REASON(i64 %15)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i8* @ERR_PACK(i64 %17, i32 0, i64 %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store i8* %19, i8** %20, align 8
  %21 = call %struct.TYPE_4__* @int_err_get_item(%struct.TYPE_4__* %4)
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %5, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = icmp eq %struct.TYPE_4__* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %12
  %25 = load i64, i64* %7, align 8
  %26 = call i8* @ERR_PACK(i64 0, i32 0, i64 %25)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store i8* %26, i8** %27, align 8
  %28 = call %struct.TYPE_4__* @int_err_get_item(%struct.TYPE_4__* %4)
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %5, align 8
  br label %29

29:                                               ; preds = %24, %12
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %31 = icmp eq %struct.TYPE_4__* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %37

33:                                               ; preds = %29
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  br label %37

37:                                               ; preds = %33, %32
  %38 = phi i8* [ null, %32 ], [ %36, %33 ]
  store i8* %38, i8** %2, align 8
  br label %39

39:                                               ; preds = %37, %11
  %40 = load i8*, i8** %2, align 8
  ret i8* %40
}

declare dso_local i32 @RUN_ONCE(i32*, i32) #1

declare dso_local i64 @ERR_GET_LIB(i64) #1

declare dso_local i64 @ERR_GET_REASON(i64) #1

declare dso_local i8* @ERR_PACK(i64, i32, i64) #1

declare dso_local %struct.TYPE_4__* @int_err_get_item(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
