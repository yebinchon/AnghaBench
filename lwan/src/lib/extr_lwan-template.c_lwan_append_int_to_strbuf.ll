; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-template.c_lwan_append_int_to_strbuf.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-template.c_lwan_append_int_to_strbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_strbuf = type { i32 }

@INT_TO_STR_BUFFER_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_append_int_to_strbuf(%struct.lwan_strbuf* %0, i8* %1) #0 {
  %3 = alloca %struct.lwan_strbuf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.lwan_strbuf* %0, %struct.lwan_strbuf** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i32, i32* @INT_TO_STR_BUFFER_SIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @int_to_string(i32 %15, i8* %12, i64* %7)
  store i8* %16, i8** %8, align 8
  %17 = load %struct.lwan_strbuf*, %struct.lwan_strbuf** %3, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @lwan_strbuf_append_str(%struct.lwan_strbuf* %17, i8* %18, i64 %19)
  %21 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %21)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @int_to_string(i32, i8*, i64*) #2

declare dso_local i32 @lwan_strbuf_append_str(%struct.lwan_strbuf*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
