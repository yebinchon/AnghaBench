; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_growable_string_append_buffer.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_growable_string_append_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d_growable_string = type { i64, i64, i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d_growable_string*, i8*, i64)* @d_growable_string_append_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d_growable_string_append_buffer(%struct.d_growable_string* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.d_growable_string*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.d_growable_string* %0, %struct.d_growable_string** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.d_growable_string*, %struct.d_growable_string** %4, align 8
  %9 = getelementptr inbounds %struct.d_growable_string, %struct.d_growable_string* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %6, align 8
  %12 = add i64 %10, %11
  %13 = add i64 %12, 1
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load %struct.d_growable_string*, %struct.d_growable_string** %4, align 8
  %16 = getelementptr inbounds %struct.d_growable_string, %struct.d_growable_string* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ugt i64 %14, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load %struct.d_growable_string*, %struct.d_growable_string** %4, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @d_growable_string_resize(%struct.d_growable_string* %20, i64 %21)
  br label %23

23:                                               ; preds = %19, %3
  %24 = load %struct.d_growable_string*, %struct.d_growable_string** %4, align 8
  %25 = getelementptr inbounds %struct.d_growable_string, %struct.d_growable_string* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %54

29:                                               ; preds = %23
  %30 = load %struct.d_growable_string*, %struct.d_growable_string** %4, align 8
  %31 = getelementptr inbounds %struct.d_growable_string, %struct.d_growable_string* %30, i32 0, i32 2
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.d_growable_string*, %struct.d_growable_string** %4, align 8
  %34 = getelementptr inbounds %struct.d_growable_string, %struct.d_growable_string* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i8, i8* %32, i64 %35
  %37 = load i8*, i8** %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @memcpy(i8* %36, i8* %37, i64 %38)
  %40 = load %struct.d_growable_string*, %struct.d_growable_string** %4, align 8
  %41 = getelementptr inbounds %struct.d_growable_string, %struct.d_growable_string* %40, i32 0, i32 2
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.d_growable_string*, %struct.d_growable_string** %4, align 8
  %44 = getelementptr inbounds %struct.d_growable_string, %struct.d_growable_string* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = add i64 %45, %46
  %48 = getelementptr inbounds i8, i8* %42, i64 %47
  store i8 0, i8* %48, align 1
  %49 = load i64, i64* %6, align 8
  %50 = load %struct.d_growable_string*, %struct.d_growable_string** %4, align 8
  %51 = getelementptr inbounds %struct.d_growable_string, %struct.d_growable_string* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, %49
  store i64 %53, i64* %51, align 8
  br label %54

54:                                               ; preds = %29, %28
  ret void
}

declare dso_local i32 @d_growable_string_resize(%struct.d_growable_string*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
