; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_mbuf_append_base64.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_mbuf_append_base64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.cs_base64_ctx = type { i32 }

@mg_mbuf_append_base64_putc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mg_mbuf_append_base64(%struct.mbuf* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.cs_base64_ctx, align 4
  store %struct.mbuf* %0, %struct.mbuf** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i32, i32* @mg_mbuf_append_base64_putc, align 4
  %9 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %10 = call i32 @cs_base64_init(%struct.cs_base64_ctx* %7, i32 %8, %struct.mbuf* %9)
  %11 = load i8*, i8** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @cs_base64_update(%struct.cs_base64_ctx* %7, i8* %11, i64 %12)
  %14 = call i32 @cs_base64_finish(%struct.cs_base64_ctx* %7)
  ret void
}

declare dso_local i32 @cs_base64_init(%struct.cs_base64_ctx*, i32, %struct.mbuf*) #1

declare dso_local i32 @cs_base64_update(%struct.cs_base64_ctx*, i8*, i64) #1

declare dso_local i32 @cs_base64_finish(%struct.cs_base64_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
