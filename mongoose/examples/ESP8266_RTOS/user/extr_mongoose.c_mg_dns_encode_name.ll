; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_dns_encode_name.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_dns_encode_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i64 }

@.str = private unnamed_addr constant [2 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mg_dns_encode_name(%struct.mbuf* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i64, align 8
  store %struct.mbuf* %0, %struct.mbuf** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %12 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %10, align 8
  br label %14

14:                                               ; preds = %61, %3
  %15 = load i8*, i8** %6, align 8
  %16 = call i8* @strchr(i8* %15, i8 signext 46)
  store i8* %16, i8** %8, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i8*, i8** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  store i8* %21, i8** %8, align 8
  br label %22

22:                                               ; preds = %18, %14
  %23 = load i8*, i8** %8, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = ptrtoint i8* %23 to i64
  %26 = ptrtoint i8* %24 to i64
  %27 = sub i64 %25, %26
  %28 = icmp sgt i64 %27, 127
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 -1, i32* %4, align 4
  br label %75

30:                                               ; preds = %22
  %31 = load i8*, i8** %8, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = ptrtoint i8* %31 to i64
  %34 = ptrtoint i8* %32 to i64
  %35 = sub i64 %33, %34
  %36 = trunc i64 %35 to i8
  store i8 %36, i8* %9, align 1
  %37 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %38 = call i32 (%struct.mbuf*, ...) @mbuf_append(%struct.mbuf* %37, i8* %9, i32 1)
  %39 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load i8, i8* %9, align 1
  %42 = zext i8 %41 to i32
  %43 = call i32 (%struct.mbuf*, ...) @mbuf_append(%struct.mbuf* %39, i8* %40, i32 %42)
  %44 = load i8*, i8** %8, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 46
  br i1 %47, label %48, label %51

48:                                               ; preds = %30
  %49 = load i8, i8* %9, align 1
  %50 = add i8 %49, 1
  store i8 %50, i8* %9, align 1
  br label %51

51:                                               ; preds = %48, %30
  %52 = load i8, i8* %9, align 1
  %53 = zext i8 %52 to i32
  %54 = load i8*, i8** %6, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8* %56, i8** %6, align 8
  %57 = load i8, i8* %9, align 1
  %58 = zext i8 %57 to i64
  %59 = load i64, i64* %7, align 8
  %60 = sub i64 %59, %58
  store i64 %60, i64* %7, align 8
  br label %61

61:                                               ; preds = %51
  %62 = load i8*, i8** %8, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %14, label %66

66:                                               ; preds = %61
  %67 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %68 = call i32 (%struct.mbuf*, ...) @mbuf_append(%struct.mbuf* %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %69 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %70 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %10, align 8
  %73 = sub i64 %71, %72
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %66, %29
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @mbuf_append(%struct.mbuf*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
