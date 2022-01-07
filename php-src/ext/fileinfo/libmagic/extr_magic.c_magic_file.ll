; ModuleID = '/home/carl/AnghaBench/php-src/ext/fileinfo/libmagic/extr_magic.c_magic_file.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/fileinfo/libmagic/extr_magic.c_magic_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.magic_set = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @magic_file(%struct.magic_set* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.magic_set*, align 8
  %5 = alloca i8*, align 8
  store %struct.magic_set* %0, %struct.magic_set** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.magic_set*, %struct.magic_set** %4, align 8
  %7 = icmp eq %struct.magic_set* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i8* null, i8** %3, align 8
  br label %13

9:                                                ; preds = %2
  %10 = load %struct.magic_set*, %struct.magic_set** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i8* @file_or_stream(%struct.magic_set* %10, i8* %11, i32* null)
  store i8* %12, i8** %3, align 8
  br label %13

13:                                               ; preds = %9, %8
  %14 = load i8*, i8** %3, align 8
  ret i8* %14
}

declare dso_local i8* @file_or_stream(%struct.magic_set*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
