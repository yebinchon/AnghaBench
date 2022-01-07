; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_parse_dns.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_parse_dns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_dns_message = type { i32, i32, i32*, i32*, i8*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.mg_dns_header = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mg_parse_dns(i8* %0, i32 %1, %struct.mg_dns_message* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mg_dns_message*, align 8
  %8 = alloca %struct.mg_dns_header*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mg_dns_message* %2, %struct.mg_dns_message** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.mg_dns_header*
  store %struct.mg_dns_header* %13, %struct.mg_dns_header** %8, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 16
  store i8* %15, i8** %9, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  store i8* %19, i8** %10, align 8
  %20 = load %struct.mg_dns_message*, %struct.mg_dns_message** %7, align 8
  %21 = call i32 @memset(%struct.mg_dns_message* %20, i32 0, i32 56)
  %22 = load i8*, i8** %5, align 8
  %23 = load %struct.mg_dns_message*, %struct.mg_dns_message** %7, align 8
  %24 = getelementptr inbounds %struct.mg_dns_message, %struct.mg_dns_message* %23, i32 0, i32 6
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i8* %22, i8** %25, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.mg_dns_message*, %struct.mg_dns_message** %7, align 8
  %28 = getelementptr inbounds %struct.mg_dns_message, %struct.mg_dns_message* %27, i32 0, i32 6
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 8
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 16
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %143

33:                                               ; preds = %3
  %34 = load %struct.mg_dns_header*, %struct.mg_dns_header** %8, align 8
  %35 = getelementptr inbounds %struct.mg_dns_header, %struct.mg_dns_header* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.mg_dns_message*, %struct.mg_dns_message** %7, align 8
  %38 = getelementptr inbounds %struct.mg_dns_message, %struct.mg_dns_message* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 8
  %39 = load %struct.mg_dns_header*, %struct.mg_dns_header** %8, align 8
  %40 = getelementptr inbounds %struct.mg_dns_header, %struct.mg_dns_header* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @ntohs(i32 %41)
  %43 = load %struct.mg_dns_message*, %struct.mg_dns_message** %7, align 8
  %44 = getelementptr inbounds %struct.mg_dns_message, %struct.mg_dns_message* %43, i32 0, i32 4
  store i8* %42, i8** %44, align 8
  %45 = load %struct.mg_dns_header*, %struct.mg_dns_header** %8, align 8
  %46 = getelementptr inbounds %struct.mg_dns_header, %struct.mg_dns_header* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @ntohs(i32 %47)
  %49 = ptrtoint i8* %48 to i32
  %50 = load %struct.mg_dns_message*, %struct.mg_dns_message** %7, align 8
  %51 = getelementptr inbounds %struct.mg_dns_message, %struct.mg_dns_message* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.mg_dns_message*, %struct.mg_dns_message** %7, align 8
  %53 = getelementptr inbounds %struct.mg_dns_message, %struct.mg_dns_message* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.mg_dns_message*, %struct.mg_dns_message** %7, align 8
  %56 = getelementptr inbounds %struct.mg_dns_message, %struct.mg_dns_message* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = call i64 @ARRAY_SIZE(i32* %57)
  %59 = trunc i64 %58 to i32
  %60 = icmp sgt i32 %54, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %33
  %62 = load %struct.mg_dns_message*, %struct.mg_dns_message** %7, align 8
  %63 = getelementptr inbounds %struct.mg_dns_message, %struct.mg_dns_message* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = call i64 @ARRAY_SIZE(i32* %64)
  %66 = trunc i64 %65 to i32
  %67 = load %struct.mg_dns_message*, %struct.mg_dns_message** %7, align 8
  %68 = getelementptr inbounds %struct.mg_dns_message, %struct.mg_dns_message* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  br label %69

69:                                               ; preds = %61, %33
  %70 = load %struct.mg_dns_header*, %struct.mg_dns_header** %8, align 8
  %71 = getelementptr inbounds %struct.mg_dns_header, %struct.mg_dns_header* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @ntohs(i32 %72)
  %74 = ptrtoint i8* %73 to i32
  %75 = load %struct.mg_dns_message*, %struct.mg_dns_message** %7, align 8
  %76 = getelementptr inbounds %struct.mg_dns_message, %struct.mg_dns_message* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.mg_dns_message*, %struct.mg_dns_message** %7, align 8
  %78 = getelementptr inbounds %struct.mg_dns_message, %struct.mg_dns_message* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.mg_dns_message*, %struct.mg_dns_message** %7, align 8
  %81 = getelementptr inbounds %struct.mg_dns_message, %struct.mg_dns_message* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = call i64 @ARRAY_SIZE(i32* %82)
  %84 = trunc i64 %83 to i32
  %85 = icmp sgt i32 %79, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %69
  %87 = load %struct.mg_dns_message*, %struct.mg_dns_message** %7, align 8
  %88 = getelementptr inbounds %struct.mg_dns_message, %struct.mg_dns_message* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = call i64 @ARRAY_SIZE(i32* %89)
  %91 = trunc i64 %90 to i32
  %92 = load %struct.mg_dns_message*, %struct.mg_dns_message** %7, align 8
  %93 = getelementptr inbounds %struct.mg_dns_message, %struct.mg_dns_message* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %86, %69
  store i32 0, i32* %11, align 4
  br label %95

95:                                               ; preds = %115, %94
  %96 = load i32, i32* %11, align 4
  %97 = load %struct.mg_dns_message*, %struct.mg_dns_message** %7, align 8
  %98 = getelementptr inbounds %struct.mg_dns_message, %struct.mg_dns_message* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %118

101:                                              ; preds = %95
  %102 = load i8*, i8** %9, align 8
  %103 = load i8*, i8** %10, align 8
  %104 = load %struct.mg_dns_message*, %struct.mg_dns_message** %7, align 8
  %105 = getelementptr inbounds %struct.mg_dns_message, %struct.mg_dns_message* %104, i32 0, i32 3
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = call i8* @mg_parse_dns_resource_record(i8* %102, i8* %103, i32* %109, i32 0)
  store i8* %110, i8** %9, align 8
  %111 = load i8*, i8** %9, align 8
  %112 = icmp eq i8* %111, null
  br i1 %112, label %113, label %114

113:                                              ; preds = %101
  store i32 -1, i32* %4, align 4
  br label %143

114:                                              ; preds = %101
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %11, align 4
  br label %95

118:                                              ; preds = %95
  store i32 0, i32* %11, align 4
  br label %119

119:                                              ; preds = %139, %118
  %120 = load i32, i32* %11, align 4
  %121 = load %struct.mg_dns_message*, %struct.mg_dns_message** %7, align 8
  %122 = getelementptr inbounds %struct.mg_dns_message, %struct.mg_dns_message* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp slt i32 %120, %123
  br i1 %124, label %125, label %142

125:                                              ; preds = %119
  %126 = load i8*, i8** %9, align 8
  %127 = load i8*, i8** %10, align 8
  %128 = load %struct.mg_dns_message*, %struct.mg_dns_message** %7, align 8
  %129 = getelementptr inbounds %struct.mg_dns_message, %struct.mg_dns_message* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %11, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = call i8* @mg_parse_dns_resource_record(i8* %126, i8* %127, i32* %133, i32 1)
  store i8* %134, i8** %9, align 8
  %135 = load i8*, i8** %9, align 8
  %136 = icmp eq i8* %135, null
  br i1 %136, label %137, label %138

137:                                              ; preds = %125
  store i32 -1, i32* %4, align 4
  br label %143

138:                                              ; preds = %125
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %11, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %11, align 4
  br label %119

142:                                              ; preds = %119
  store i32 0, i32* %4, align 4
  br label %143

143:                                              ; preds = %142, %137, %113, %32
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i32 @memset(%struct.mg_dns_message*, i32, i32) #1

declare dso_local i8* @ntohs(i32) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i8* @mg_parse_dns_resource_record(i8*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
