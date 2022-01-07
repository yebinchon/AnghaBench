; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-io/src/extr_io.c_io_bufread.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-io/src/extr_io.c_io_bufread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RString = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"Si\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @io_bufread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_bufread(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.RString*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @mrb_get_args(i32* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %5, i32* %7)
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.RString* @RSTRING(i32 %13)
  store %struct.RString* %14, %struct.RString** %9, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = load %struct.RString*, %struct.RString** %9, align 8
  %17 = call i32 @mrb_str_modify(i32* %15, %struct.RString* %16)
  %18 = load %struct.RString*, %struct.RString** %9, align 8
  %19 = call i8* @RSTR_PTR(%struct.RString* %18)
  store i8* %19, i8** %10, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @mrb_str_new(i32* %20, i8* %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.RString*, %struct.RString** %9, align 8
  %25 = call i32 @RSTR_LEN(%struct.RString* %24)
  %26 = load i32, i32* %7, align 4
  %27 = sub nsw i32 %25, %26
  store i32 %27, i32* %8, align 4
  %28 = load i8*, i8** %10, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @memmove(i8* %28, i8* %32, i32 %33)
  %35 = load i8*, i8** %10, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  store i8 0, i8* %38, align 1
  %39 = load %struct.RString*, %struct.RString** %9, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @RSTR_SET_LEN(%struct.RString* %39, i32 %40)
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i32 @mrb_get_args(i32*, i8*, i32*, i32*) #1

declare dso_local %struct.RString* @RSTRING(i32) #1

declare dso_local i32 @mrb_str_modify(i32*, %struct.RString*) #1

declare dso_local i8* @RSTR_PTR(%struct.RString*) #1

declare dso_local i32 @mrb_str_new(i32*, i8*, i32) #1

declare dso_local i32 @RSTR_LEN(%struct.RString*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @RSTR_SET_LEN(%struct.RString*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
