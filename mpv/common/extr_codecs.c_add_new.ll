; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_codecs.c_add_new.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_codecs.c_add_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_decoder_list = type { i32 }
%struct.mp_decoder_entry = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_decoder_list*, %struct.mp_decoder_entry*, i8*)* @add_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_new(%struct.mp_decoder_list* %0, %struct.mp_decoder_entry* %1, i8* %2) #0 {
  %4 = alloca %struct.mp_decoder_list*, align 8
  %5 = alloca %struct.mp_decoder_entry*, align 8
  %6 = alloca i8*, align 8
  store %struct.mp_decoder_list* %0, %struct.mp_decoder_list** %4, align 8
  store %struct.mp_decoder_entry* %1, %struct.mp_decoder_entry** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.mp_decoder_entry*, %struct.mp_decoder_entry** %5, align 8
  %8 = icmp ne %struct.mp_decoder_entry* %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %3
  %10 = load i8*, i8** %6, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = load %struct.mp_decoder_entry*, %struct.mp_decoder_entry** %5, align 8
  %14 = getelementptr inbounds %struct.mp_decoder_entry, %struct.mp_decoder_entry* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = call i64 @strcmp(i32 %15, i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12, %3
  br label %32

20:                                               ; preds = %12, %9
  %21 = load %struct.mp_decoder_list*, %struct.mp_decoder_list** %4, align 8
  %22 = load %struct.mp_decoder_entry*, %struct.mp_decoder_entry** %5, align 8
  %23 = getelementptr inbounds %struct.mp_decoder_entry, %struct.mp_decoder_entry* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.mp_decoder_entry*, %struct.mp_decoder_entry** %5, align 8
  %26 = getelementptr inbounds %struct.mp_decoder_entry, %struct.mp_decoder_entry* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mp_decoder_entry*, %struct.mp_decoder_entry** %5, align 8
  %29 = getelementptr inbounds %struct.mp_decoder_entry, %struct.mp_decoder_entry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @mp_add_decoder(%struct.mp_decoder_list* %21, i32 %24, i32 %27, i32 %30)
  br label %32

32:                                               ; preds = %20, %19
  ret void
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @mp_add_decoder(%struct.mp_decoder_list*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
