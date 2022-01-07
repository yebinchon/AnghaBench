; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_read_string_alloc.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_read_string_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.buffer*)* @read_string_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @read_string_alloc(%struct.buffer* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.buffer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.buffer* %0, %struct.buffer** %3, align 8
  %6 = load %struct.buffer*, %struct.buffer** %3, align 8
  %7 = call i32 @buf_read_u16(%struct.buffer* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %32

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @malloc(i32 %12)
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @check_malloc_return(i8* %15)
  %17 = load %struct.buffer*, %struct.buffer** %3, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @buf_read(%struct.buffer* %17, i8* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %11
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @free(i8* %23)
  store i8* null, i8** %2, align 8
  br label %32

25:                                               ; preds = %11
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %26, i64 %29
  store i8 0, i8* %30, align 1
  %31 = load i8*, i8** %5, align 8
  store i8* %31, i8** %2, align 8
  br label %32

32:                                               ; preds = %25, %22, %10
  %33 = load i8*, i8** %2, align 8
  ret i8* %33
}

declare dso_local i32 @buf_read_u16(%struct.buffer*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @check_malloc_return(i8*) #1

declare dso_local i32 @buf_read(%struct.buffer*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
