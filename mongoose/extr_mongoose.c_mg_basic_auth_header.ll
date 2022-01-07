; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_basic_auth_header.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_basic_auth_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.mg_str = type { i8*, i32 }
%struct.cs_base64_ctx = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Authorization: Basic \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@mg_mbuf_append_base64_putc = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c":\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mg_basic_auth_header(i8* %0, i32 %1, i8* %2, i32 %3, %struct.mbuf* %4) #0 {
  %6 = alloca %struct.mg_str, align 8
  %7 = alloca %struct.mg_str, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.cs_base64_ctx, align 4
  %12 = bitcast %struct.mg_str* %6 to { i8*, i32 }*
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %12, i32 0, i32 0
  store i8* %0, i8** %13, align 8
  %14 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %12, i32 0, i32 1
  store i32 %1, i32* %14, align 8
  %15 = bitcast %struct.mg_str* %7 to { i8*, i32 }*
  %16 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %15, i32 0, i32 0
  store i8* %2, i8** %16, align 8
  %17 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %15, i32 0, i32 1
  store i32 %3, i32* %17, align 8
  store %struct.mbuf* %4, %struct.mbuf** %8, align 8
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  %18 = load i32, i32* @mg_mbuf_append_base64_putc, align 4
  %19 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %20 = call i32 @cs_base64_init(%struct.cs_base64_ctx* %11, i32 %18, %struct.mbuf* %19)
  %21 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = call i32 @mbuf_append(%struct.mbuf* %21, i8* %22, i32 %24)
  %26 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %6, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %6, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @cs_base64_update(%struct.cs_base64_ctx* %11, i8* %27, i32 %29)
  %31 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %7, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %5
  %35 = call i32 @cs_base64_update(%struct.cs_base64_ctx* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %36 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %7, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %7, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @cs_base64_update(%struct.cs_base64_ctx* %11, i8* %37, i32 %39)
  br label %41

41:                                               ; preds = %34, %5
  %42 = call i32 @cs_base64_finish(%struct.cs_base64_ctx* %11)
  %43 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = call i32 @strlen(i8* %45)
  %47 = call i32 @mbuf_append(%struct.mbuf* %43, i8* %44, i32 %46)
  ret void
}

declare dso_local i32 @cs_base64_init(%struct.cs_base64_ctx*, i32, %struct.mbuf*) #1

declare dso_local i32 @mbuf_append(%struct.mbuf*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @cs_base64_update(%struct.cs_base64_ctx*, i8*, i32) #1

declare dso_local i32 @cs_base64_finish(%struct.cs_base64_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
