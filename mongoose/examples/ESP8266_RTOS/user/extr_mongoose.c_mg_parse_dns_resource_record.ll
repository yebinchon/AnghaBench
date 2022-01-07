; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_parse_dns_resource_record.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_parse_dns_resource_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_dns_resource_record = type { i8, i8, i32, %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.TYPE_3__ = type { i8*, i32 }

@MG_DNS_ANSWER = common dso_local global i32 0, align 4
@MG_DNS_QUESTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, %struct.mg_dns_resource_record*, i32)* @mg_parse_dns_resource_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mg_parse_dns_resource_record(i8* %0, i8* %1, %struct.mg_dns_resource_record* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mg_dns_resource_record*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.mg_dns_resource_record* %2, %struct.mg_dns_resource_record** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %10, align 8
  br label %14

14:                                               ; preds = %35, %4
  %15 = load i8*, i8** %6, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ult i8* %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load i8*, i8** %6, align 8
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  store i32 %21, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br label %23

23:                                               ; preds = %18, %14
  %24 = phi i1 [ false, %14 ], [ %22, %18 ]
  br i1 %24, label %25, label %41

25:                                               ; preds = %23
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = and i32 %29, 192
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  store i8* %34, i8** %6, align 8
  br label %41

35:                                               ; preds = %25
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %36, 1
  %38 = load i8*, i8** %6, align 8
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  store i8* %40, i8** %6, align 8
  br label %14

41:                                               ; preds = %32, %23
  %42 = load i8*, i8** %6, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 -5
  %45 = icmp ugt i8* %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i8* null, i8** %5, align 8
  br label %164

47:                                               ; preds = %41
  %48 = load i8*, i8** %10, align 8
  %49 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %8, align 8
  %50 = getelementptr inbounds %struct.mg_dns_resource_record, %struct.mg_dns_resource_record* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i8* %48, i8** %51, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = ptrtoint i8* %52 to i64
  %55 = ptrtoint i8* %53 to i64
  %56 = sub i64 %54, %55
  %57 = add nsw i64 %56, 1
  %58 = trunc i64 %57 to i32
  %59 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %8, align 8
  %60 = getelementptr inbounds %struct.mg_dns_resource_record, %struct.mg_dns_resource_record* %59, i32 0, i32 5
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %6, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = shl i32 %67, 8
  %69 = load i8*, i8** %6, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = or i32 %68, %72
  %74 = trunc i32 %73 to i8
  %75 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %8, align 8
  %76 = getelementptr inbounds %struct.mg_dns_resource_record, %struct.mg_dns_resource_record* %75, i32 0, i32 0
  store i8 %74, i8* %76, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 2
  store i8* %78, i8** %6, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = shl i32 %82, 8
  %84 = load i8*, i8** %6, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = or i32 %83, %87
  %89 = trunc i32 %88 to i8
  %90 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %8, align 8
  %91 = getelementptr inbounds %struct.mg_dns_resource_record, %struct.mg_dns_resource_record* %90, i32 0, i32 1
  store i8 %89, i8* %91, align 1
  %92 = load i8*, i8** %6, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 2
  store i8* %93, i8** %6, align 8
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %47
  %97 = load i32, i32* @MG_DNS_ANSWER, align 4
  br label %100

98:                                               ; preds = %47
  %99 = load i32, i32* @MG_DNS_QUESTION, align 4
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i32 [ %97, %96 ], [ %99, %98 ]
  %102 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %8, align 8
  %103 = getelementptr inbounds %struct.mg_dns_resource_record, %struct.mg_dns_resource_record* %102, i32 0, i32 4
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %162

106:                                              ; preds = %100
  %107 = load i8*, i8** %6, align 8
  %108 = load i8*, i8** %7, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 -6
  %110 = icmp uge i8* %107, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  store i8* null, i8** %5, align 8
  br label %164

112:                                              ; preds = %106
  %113 = load i8*, i8** %6, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 0
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = shl i32 %116, 24
  %118 = load i8*, i8** %6, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 1
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = shl i32 %121, 16
  %123 = or i32 %117, %122
  %124 = load i8*, i8** %6, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 2
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = shl i32 %127, 8
  %129 = or i32 %123, %128
  %130 = load i8*, i8** %6, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 3
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = or i32 %129, %133
  %135 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %8, align 8
  %136 = getelementptr inbounds %struct.mg_dns_resource_record, %struct.mg_dns_resource_record* %135, i32 0, i32 2
  store i32 %134, i32* %136, align 4
  %137 = load i8*, i8** %6, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 4
  store i8* %138, i8** %6, align 8
  %139 = load i8*, i8** %6, align 8
  %140 = load i8, i8* %139, align 1
  %141 = zext i8 %140 to i32
  %142 = shl i32 %141, 8
  %143 = load i8*, i8** %6, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 1
  %145 = load i8, i8* %144, align 1
  %146 = zext i8 %145 to i32
  %147 = or i32 %142, %146
  store i32 %147, i32* %12, align 4
  %148 = load i8*, i8** %6, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 2
  store i8* %149, i8** %6, align 8
  %150 = load i8*, i8** %6, align 8
  %151 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %8, align 8
  %152 = getelementptr inbounds %struct.mg_dns_resource_record, %struct.mg_dns_resource_record* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  store i8* %150, i8** %153, align 8
  %154 = load i32, i32* %12, align 4
  %155 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %8, align 8
  %156 = getelementptr inbounds %struct.mg_dns_resource_record, %struct.mg_dns_resource_record* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 1
  store i32 %154, i32* %157, align 8
  %158 = load i32, i32* %12, align 4
  %159 = load i8*, i8** %6, align 8
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds i8, i8* %159, i64 %160
  store i8* %161, i8** %6, align 8
  br label %162

162:                                              ; preds = %112, %100
  %163 = load i8*, i8** %6, align 8
  store i8* %163, i8** %5, align 8
  br label %164

164:                                              ; preds = %162, %111, %46
  %165 = load i8*, i8** %5, align 8
  ret i8* %165
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
