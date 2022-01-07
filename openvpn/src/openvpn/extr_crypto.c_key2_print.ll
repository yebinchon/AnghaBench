; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_crypto.c_key2_print.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_crypto.c_key2_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key2 = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.key_type = type { i32, i32 }
%struct.gc_arena = type { i32 }

@D_SHOW_KEY_SOURCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s (cipher): %s\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"%s (hmac): %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @key2_print(%struct.key2* %0, %struct.key_type* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.key2*, align 8
  %6 = alloca %struct.key_type*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.gc_arena, align 4
  store %struct.key2* %0, %struct.key2** %5, align 8
  store %struct.key_type* %1, %struct.key_type** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = call i32 (...) @gc_new()
  %11 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %9, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load %struct.key2*, %struct.key2** %5, align 8
  %13 = getelementptr inbounds %struct.key2, %struct.key2* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 2
  %16 = zext i1 %15 to i32
  %17 = call i32 @ASSERT(i32 %16)
  %18 = load i32, i32* @D_SHOW_KEY_SOURCE, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = load %struct.key2*, %struct.key2** %5, align 8
  %21 = getelementptr inbounds %struct.key2, %struct.key2* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.key_type*, %struct.key_type** %6, align 8
  %27 = getelementptr inbounds %struct.key_type, %struct.key_type* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @format_hex(i32 %25, i32 %28, i32 0, %struct.gc_arena* %9)
  %30 = call i32 @dmsg(i32 %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %19, i32 %29)
  %31 = load i32, i32* @D_SHOW_KEY_SOURCE, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = load %struct.key2*, %struct.key2** %5, align 8
  %34 = getelementptr inbounds %struct.key2, %struct.key2* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.key_type*, %struct.key_type** %6, align 8
  %40 = getelementptr inbounds %struct.key_type, %struct.key_type* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @format_hex(i32 %38, i32 %41, i32 0, %struct.gc_arena* %9)
  %43 = call i32 @dmsg(i32 %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %32, i32 %42)
  %44 = load i32, i32* @D_SHOW_KEY_SOURCE, align 4
  %45 = load i8*, i8** %8, align 8
  %46 = load %struct.key2*, %struct.key2** %5, align 8
  %47 = getelementptr inbounds %struct.key2, %struct.key2* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.key_type*, %struct.key_type** %6, align 8
  %53 = getelementptr inbounds %struct.key_type, %struct.key_type* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @format_hex(i32 %51, i32 %54, i32 0, %struct.gc_arena* %9)
  %56 = call i32 @dmsg(i32 %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %45, i32 %55)
  %57 = load i32, i32* @D_SHOW_KEY_SOURCE, align 4
  %58 = load i8*, i8** %8, align 8
  %59 = load %struct.key2*, %struct.key2** %5, align 8
  %60 = getelementptr inbounds %struct.key2, %struct.key2* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.key_type*, %struct.key_type** %6, align 8
  %66 = getelementptr inbounds %struct.key_type, %struct.key_type* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @format_hex(i32 %64, i32 %67, i32 0, %struct.gc_arena* %9)
  %69 = call i32 @dmsg(i32 %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %58, i32 %68)
  %70 = call i32 @gc_free(%struct.gc_arena* %9)
  ret void
}

declare dso_local i32 @gc_new(...) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dmsg(i32, i8*, i8*, i32) #1

declare dso_local i32 @format_hex(i32, i32, i32, %struct.gc_arena*) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
