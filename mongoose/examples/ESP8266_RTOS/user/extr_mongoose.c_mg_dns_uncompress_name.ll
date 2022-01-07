; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_dns_uncompress_name.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_dns_uncompress_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_dns_message = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.mg_str = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mg_dns_uncompress_name(%struct.mg_dns_message* %0, %struct.mg_str* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.mg_dns_message*, align 8
  %7 = alloca %struct.mg_str*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.mg_dns_message* %0, %struct.mg_dns_message** %6, align 8
  store %struct.mg_str* %1, %struct.mg_str** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %17 = load i8*, i8** %8, align 8
  store i8* %17, i8** %12, align 8
  %18 = load %struct.mg_str*, %struct.mg_str** %7, align 8
  %19 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** %13, align 8
  %22 = load %struct.mg_dns_message*, %struct.mg_dns_message** %6, align 8
  %23 = getelementptr inbounds %struct.mg_dns_message, %struct.mg_dns_message* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = load %struct.mg_dns_message*, %struct.mg_dns_message** %6, align 8
  %28 = getelementptr inbounds %struct.mg_dns_message, %struct.mg_dns_message* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %26, i64 %31
  store i8* %32, i8** %14, align 8
  %33 = load i8*, i8** %13, align 8
  %34 = load i8*, i8** %14, align 8
  %35 = icmp uge i8* %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %154

37:                                               ; preds = %4
  br label %38

38:                                               ; preds = %138, %88, %37
  %39 = load i8*, i8** %13, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %13, align 8
  %41 = load i8, i8* %39, align 1
  %42 = zext i8 %41 to i32
  store i32 %42, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %141

44:                                               ; preds = %38
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = load i8*, i8** %8, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = ptrtoint i8* %47 to i64
  %50 = ptrtoint i8* %48 to i64
  %51 = sub i64 %49, %50
  %52 = sub nsw i64 %46, %51
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %15, align 4
  %54 = load i8*, i8** %13, align 8
  %55 = load i8*, i8** %14, align 8
  %56 = icmp uge i8* %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %44
  store i64 0, i64* %5, align 8
  br label %154

58:                                               ; preds = %44
  %59 = load i32, i32* %10, align 4
  %60 = and i32 %59, 192
  %61 = icmp eq i32 %60, 192
  br i1 %61, label %62, label %96

62:                                               ; preds = %58
  %63 = load i8*, i8** %13, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 -1
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = and i32 %66, -193
  %68 = shl i32 %67, 8
  %69 = load i8*, i8** %13, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = or i32 %68, %72
  %74 = sext i32 %73 to i64
  store i64 %74, i64* %16, align 8
  %75 = load i64, i64* %16, align 8
  %76 = load %struct.mg_dns_message*, %struct.mg_dns_message** %6, align 8
  %77 = getelementptr inbounds %struct.mg_dns_message, %struct.mg_dns_message* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = icmp sge i64 %75, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %62
  store i64 0, i64* %5, align 8
  br label %154

83:                                               ; preds = %62
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %11, align 4
  %86 = icmp sgt i32 %85, 15
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  store i64 0, i64* %5, align 8
  br label %154

88:                                               ; preds = %83
  %89 = load %struct.mg_dns_message*, %struct.mg_dns_message** %6, align 8
  %90 = getelementptr inbounds %struct.mg_dns_message, %struct.mg_dns_message* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to i8*
  %94 = load i64, i64* %16, align 8
  %95 = getelementptr inbounds i8, i8* %93, i64 %94
  store i8* %95, i8** %13, align 8
  br label %38

96:                                               ; preds = %58
  %97 = load i32, i32* %10, align 4
  %98 = icmp sgt i32 %97, 63
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  store i64 0, i64* %5, align 8
  br label %154

100:                                              ; preds = %96
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %15, align 4
  %103 = icmp sgt i32 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = load i32, i32* %15, align 4
  store i32 %105, i32* %10, align 4
  br label %106

106:                                              ; preds = %104, %100
  %107 = load i8*, i8** %13, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = load i8*, i8** %14, align 8
  %112 = icmp uge i8* %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  store i64 0, i64* %5, align 8
  br label %154

114:                                              ; preds = %106
  %115 = load i8*, i8** %8, align 8
  %116 = load i8*, i8** %13, align 8
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @memcpy(i8* %115, i8* %116, i32 %117)
  %119 = load i32, i32* %10, align 4
  %120 = load i8*, i8** %13, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  store i8* %122, i8** %13, align 8
  %123 = load i32, i32* %10, align 4
  %124 = load i8*, i8** %8, align 8
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i8, i8* %124, i64 %125
  store i8* %126, i8** %8, align 8
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %15, align 4
  %129 = sub nsw i32 %128, %127
  store i32 %129, i32* %15, align 4
  %130 = load i32, i32* %15, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %114
  %133 = load i8*, i8** %8, align 8
  %134 = load i8*, i8** %12, align 8
  %135 = ptrtoint i8* %133 to i64
  %136 = ptrtoint i8* %134 to i64
  %137 = sub i64 %135, %136
  store i64 %137, i64* %5, align 8
  br label %154

138:                                              ; preds = %114
  %139 = load i8*, i8** %8, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %8, align 8
  store i8 46, i8* %139, align 1
  br label %38

141:                                              ; preds = %38
  %142 = load i8*, i8** %8, align 8
  %143 = load i8*, i8** %12, align 8
  %144 = icmp ne i8* %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %141
  %146 = load i8*, i8** %8, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 -1
  store i8* %147, i8** %8, align 8
  store i8 0, i8* %147, align 1
  br label %148

148:                                              ; preds = %145, %141
  %149 = load i8*, i8** %8, align 8
  %150 = load i8*, i8** %12, align 8
  %151 = ptrtoint i8* %149 to i64
  %152 = ptrtoint i8* %150 to i64
  %153 = sub i64 %151, %152
  store i64 %153, i64* %5, align 8
  br label %154

154:                                              ; preds = %148, %132, %113, %99, %87, %82, %57, %36
  %155 = load i64, i64* %5, align 8
  ret i64 %155
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
