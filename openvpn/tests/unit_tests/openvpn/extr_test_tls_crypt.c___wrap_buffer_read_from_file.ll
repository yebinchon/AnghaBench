; ModuleID = '/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_tls_crypt.c___wrap_buffer_read_from_file.c'
source_filename = "/home/carl/AnghaBench/openvpn/tests/unit_tests/openvpn/extr_test_tls_crypt.c___wrap_buffer_read_from_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc_arena = type { i32 }
%struct.buffer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__wrap_buffer_read_from_file(i8* %0, %struct.gc_arena* %1) #0 {
  %3 = alloca %struct.buffer, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.gc_arena*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.gc_arena* %1, %struct.gc_arena** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @check_expected(i8* %7)
  %9 = call i64 (...) @mock()
  %10 = inttoptr i64 %9 to i8*
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i64 @strlen(i8* %11)
  %13 = add nsw i64 %12, 1
  %14 = load %struct.gc_arena*, %struct.gc_arena** %5, align 8
  %15 = call i32 @alloc_buf_gc(i64 %13, %struct.gc_arena* %14)
  %16 = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i64 @strlen(i8* %18)
  %20 = add nsw i64 %19, 1
  %21 = call i32 @buf_write(%struct.buffer* %3, i8* %17, i64 %20)
  %22 = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  ret i32 %23
}

declare dso_local i32 @check_expected(i8*) #1

declare dso_local i64 @mock(...) #1

declare dso_local i32 @alloc_buf_gc(i64, %struct.gc_arena*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @buf_write(%struct.buffer*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
