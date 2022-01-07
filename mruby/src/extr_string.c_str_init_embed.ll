; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_string.c_str_init_embed.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_string.c_str_init_embed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RString = type { i32 }

@EMBED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.RString* (%struct.RString*, i8*, i64)* @str_init_embed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.RString* @str_init_embed(%struct.RString* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.RString*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.RString* %0, %struct.RString** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = load %struct.RString*, %struct.RString** %4, align 8
  %11 = call i8* @RSTR_EMBED_PTR(%struct.RString* %10)
  %12 = load i8*, i8** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @memcpy(i8* %11, i8* %12, i64 %13)
  br label %15

15:                                               ; preds = %9, %3
  %16 = load %struct.RString*, %struct.RString** %4, align 8
  %17 = call i8* @RSTR_EMBED_PTR(%struct.RString* %16)
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  store i8 0, i8* %19, align 1
  %20 = load %struct.RString*, %struct.RString** %4, align 8
  %21 = load i32, i32* @EMBED, align 4
  %22 = call i32 @RSTR_SET_TYPE_FLAG(%struct.RString* %20, i32 %21)
  %23 = load %struct.RString*, %struct.RString** %4, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @RSTR_SET_EMBED_LEN(%struct.RString* %23, i64 %24)
  %26 = load %struct.RString*, %struct.RString** %4, align 8
  ret %struct.RString* %26
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i8* @RSTR_EMBED_PTR(%struct.RString*) #1

declare dso_local i32 @RSTR_SET_TYPE_FLAG(%struct.RString*, i32) #1

declare dso_local i32 @RSTR_SET_EMBED_LEN(%struct.RString*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
