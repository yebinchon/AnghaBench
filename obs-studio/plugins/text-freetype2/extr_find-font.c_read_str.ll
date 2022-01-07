; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/text-freetype2/extr_find-font.c_read_str.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/text-freetype2/extr_find-font.c_read_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serializer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serializer*, i8**)* @read_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_str(%struct.serializer* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.serializer*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.serializer* %0, %struct.serializer** %4, align 8
  store i8** %1, i8*** %5, align 8
  %8 = load %struct.serializer*, %struct.serializer** %4, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @read_var(%struct.serializer* %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %35

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, 1
  %16 = call i8* @bmalloc(i32 %15)
  store i8* %16, i8** %7, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %13
  %20 = load %struct.serializer*, %struct.serializer** %4, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @read_data(%struct.serializer* %20, i8* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @bfree(i8* %26)
  store i32 0, i32* %3, align 4
  br label %35

28:                                               ; preds = %19, %13
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  store i8 0, i8* %32, align 1
  %33 = load i8*, i8** %7, align 8
  %34 = load i8**, i8*** %5, align 8
  store i8* %33, i8** %34, align 8
  store i32 1, i32* %3, align 4
  br label %35

35:                                               ; preds = %28, %25, %12
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @read_var(%struct.serializer*, i32) #1

declare dso_local i8* @bmalloc(i32) #1

declare dso_local i32 @read_data(%struct.serializer*, i8*, i32) #1

declare dso_local i32 @bfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
