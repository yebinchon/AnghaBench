; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_buffer.c_buffer_list_file.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_buffer.c_buffer_list_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_list = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.buffer_list* @buffer_list_file(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.buffer_list*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = call i32* @platform_fopen(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %9, i32** %5, align 8
  store %struct.buffer_list* null, %struct.buffer_list** %6, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %36

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @malloc(i32 %13)
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %33

18:                                               ; preds = %12
  %19 = call %struct.buffer_list* @buffer_list_new(i32 0)
  store %struct.buffer_list* %19, %struct.buffer_list** %6, align 8
  br label %20

20:                                               ; preds = %26, %18
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = call i32* @fgets(i8* %21, i32 %22, i32* %23)
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load %struct.buffer_list*, %struct.buffer_list** %6, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @buffer_list_push(%struct.buffer_list* %27, i8* %28)
  br label %20

30:                                               ; preds = %20
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @free(i8* %31)
  br label %33

33:                                               ; preds = %30, %12
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @fclose(i32* %34)
  br label %36

36:                                               ; preds = %33, %2
  %37 = load %struct.buffer_list*, %struct.buffer_list** %6, align 8
  ret %struct.buffer_list* %37
}

declare dso_local i32* @platform_fopen(i8*, i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local %struct.buffer_list* @buffer_list_new(i32) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @buffer_list_push(%struct.buffer_list*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
