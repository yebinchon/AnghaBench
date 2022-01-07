; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-request.c_value_lookup.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-request.c_value_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_key_value_array = type { i32 }
%struct.lwan_array = type { %struct.lwan_key_value*, i32 }
%struct.lwan_key_value = type { i8*, i8* }

@key_value_compare = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.lwan_key_value_array*, i8*)* @value_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @value_lookup(%struct.lwan_key_value_array* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.lwan_key_value_array*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lwan_array*, align 8
  %7 = alloca %struct.lwan_key_value, align 8
  %8 = alloca %struct.lwan_key_value*, align 8
  store %struct.lwan_key_value_array* %0, %struct.lwan_key_value_array** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.lwan_key_value_array*, %struct.lwan_key_value_array** %4, align 8
  %10 = bitcast %struct.lwan_key_value_array* %9 to %struct.lwan_array*
  store %struct.lwan_array* %10, %struct.lwan_array** %6, align 8
  %11 = load %struct.lwan_array*, %struct.lwan_array** %6, align 8
  %12 = getelementptr inbounds %struct.lwan_array, %struct.lwan_array* %11, i32 0, i32 0
  %13 = load %struct.lwan_key_value*, %struct.lwan_key_value** %12, align 8
  %14 = call i64 @LIKELY(%struct.lwan_key_value* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.lwan_key_value, %struct.lwan_key_value* %7, i32 0, i32 0
  %18 = load i8*, i8** %5, align 8
  store i8* %18, i8** %17, align 8
  %19 = getelementptr inbounds %struct.lwan_key_value, %struct.lwan_key_value* %7, i32 0, i32 1
  store i8* null, i8** %19, align 8
  %20 = load %struct.lwan_array*, %struct.lwan_array** %6, align 8
  %21 = getelementptr inbounds %struct.lwan_array, %struct.lwan_array* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.lwan_array*, %struct.lwan_array** %6, align 8
  %24 = getelementptr inbounds %struct.lwan_array, %struct.lwan_array* %23, i32 0, i32 0
  %25 = load %struct.lwan_key_value*, %struct.lwan_key_value** %24, align 8
  %26 = load i32, i32* @key_value_compare, align 4
  %27 = call %struct.lwan_key_value* @bsearch(%struct.lwan_key_value* %7, i32 %22, %struct.lwan_key_value* %25, i32 16, i32 %26)
  store %struct.lwan_key_value* %27, %struct.lwan_key_value** %8, align 8
  %28 = load %struct.lwan_key_value*, %struct.lwan_key_value** %8, align 8
  %29 = call i64 @LIKELY(%struct.lwan_key_value* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %16
  %32 = load %struct.lwan_key_value*, %struct.lwan_key_value** %8, align 8
  %33 = getelementptr inbounds %struct.lwan_key_value, %struct.lwan_key_value* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %3, align 8
  br label %37

35:                                               ; preds = %16
  br label %36

36:                                               ; preds = %35, %2
  store i8* null, i8** %3, align 8
  br label %37

37:                                               ; preds = %36, %31
  %38 = load i8*, i8** %3, align 8
  ret i8* %38
}

declare dso_local i64 @LIKELY(%struct.lwan_key_value*) #1

declare dso_local %struct.lwan_key_value* @bsearch(%struct.lwan_key_value*, i32, %struct.lwan_key_value*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
