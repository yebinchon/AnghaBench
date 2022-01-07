; ModuleID = '/home/carl/AnghaBench/phpredis/extr_redis_array_impl.c_ra_extract_key.c'
source_filename = "/home/carl/AnghaBench/phpredis/extr_redis_array_impl.c_ra_extract_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@IS_NULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__*, i8*, i32)* @ra_extract_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ra_extract_key(%struct.TYPE_4__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @Z_TYPE(i32 %12)
  %14 = load i64, i64* @IS_NULL, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32* @ra_call_extractor(%struct.TYPE_4__* %17, i8* %18, i32 %19)
  store i32* %20, i32** %4, align 8
  br label %46

21:                                               ; preds = %3
  %22 = load i8*, i8** %6, align 8
  %23 = call i8* @strchr(i8* %22, i8 signext 123)
  store i8* %23, i8** %8, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = call i8* @strchr(i8* %27, i8 signext 125)
  store i8* %28, i8** %9, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %25, %21
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32* @zend_string_init(i8* %31, i32 %32, i32 0)
  store i32* %33, i32** %4, align 8
  br label %46

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8*, i8** %9, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = ptrtoint i8* %38 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  %43 = sub nsw i64 %42, 1
  %44 = trunc i64 %43 to i32
  %45 = call i32* @zend_string_init(i8* %37, i32 %44, i32 0)
  store i32* %45, i32** %4, align 8
  br label %46

46:                                               ; preds = %35, %30, %16
  %47 = load i32*, i32** %4, align 8
  ret i32* %47
}

declare dso_local i64 @Z_TYPE(i32) #1

declare dso_local i32* @ra_call_extractor(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32* @zend_string_init(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
