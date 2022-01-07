; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_rawsock-arp.c_proto_arp_parse.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_rawsock-arp.c_proto_arp_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ARP_IncomingRequest = type { i32, i8, i8, i8, i8, i8, i8*, i8, i8*, i8 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ARP_IncomingRequest*, i8*, i32, i32)* @proto_arp_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proto_arp_parse(%struct.ARP_IncomingRequest* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ARP_IncomingRequest*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ARP_IncomingRequest* %0, %struct.ARP_IncomingRequest** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = call i32 @VERIFY_REMAINING(i32 8)
  %10 = load %struct.ARP_IncomingRequest*, %struct.ARP_IncomingRequest** %5, align 8
  %11 = getelementptr inbounds %struct.ARP_IncomingRequest, %struct.ARP_IncomingRequest* %10, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = shl i32 %17, 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = add i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %19, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = or i32 %18, %25
  %27 = trunc i32 %26 to i8
  %28 = load %struct.ARP_IncomingRequest*, %struct.ARP_IncomingRequest** %5, align 8
  %29 = getelementptr inbounds %struct.ARP_IncomingRequest, %struct.ARP_IncomingRequest* %28, i32 0, i32 1
  store i8 %27, i8* %29, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = add i32 %31, 2
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %30, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = shl i32 %36, 8
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = add i32 %39, 3
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %38, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = or i32 %37, %44
  %46 = trunc i32 %45 to i8
  %47 = load %struct.ARP_IncomingRequest*, %struct.ARP_IncomingRequest** %5, align 8
  %48 = getelementptr inbounds %struct.ARP_IncomingRequest, %struct.ARP_IncomingRequest* %47, i32 0, i32 2
  store i8 %46, i8* %48, align 1
  %49 = load i8*, i8** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = add i32 %50, 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %49, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = load %struct.ARP_IncomingRequest*, %struct.ARP_IncomingRequest** %5, align 8
  %56 = getelementptr inbounds %struct.ARP_IncomingRequest, %struct.ARP_IncomingRequest* %55, i32 0, i32 3
  store i8 %54, i8* %56, align 2
  %57 = load i8*, i8** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = add i32 %58, 5
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %57, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = load %struct.ARP_IncomingRequest*, %struct.ARP_IncomingRequest** %5, align 8
  %64 = getelementptr inbounds %struct.ARP_IncomingRequest, %struct.ARP_IncomingRequest* %63, i32 0, i32 4
  store i8 %62, i8* %64, align 1
  %65 = load i8*, i8** %6, align 8
  %66 = load i32, i32* %7, align 4
  %67 = add i32 %66, 6
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %65, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = shl i32 %71, 8
  %73 = load i8*, i8** %6, align 8
  %74 = load i32, i32* %7, align 4
  %75 = add i32 %74, 7
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %73, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = or i32 %72, %79
  %81 = trunc i32 %80 to i8
  %82 = load %struct.ARP_IncomingRequest*, %struct.ARP_IncomingRequest** %5, align 8
  %83 = getelementptr inbounds %struct.ARP_IncomingRequest, %struct.ARP_IncomingRequest* %82, i32 0, i32 5
  store i8 %81, i8* %83, align 8
  %84 = load i32, i32* %7, align 4
  %85 = add i32 %84, 8
  store i32 %85, i32* %7, align 4
  %86 = load %struct.ARP_IncomingRequest*, %struct.ARP_IncomingRequest** %5, align 8
  %87 = getelementptr inbounds %struct.ARP_IncomingRequest, %struct.ARP_IncomingRequest* %86, i32 0, i32 4
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp ne i32 %89, 4
  br i1 %90, label %91, label %98

91:                                               ; preds = %4
  %92 = load %struct.ARP_IncomingRequest*, %struct.ARP_IncomingRequest** %5, align 8
  %93 = getelementptr inbounds %struct.ARP_IncomingRequest, %struct.ARP_IncomingRequest* %92, i32 0, i32 3
  %94 = load i8, i8* %93, align 2
  %95 = zext i8 %94 to i32
  %96 = icmp ne i32 %95, 6
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %237

98:                                               ; preds = %91, %4
  %99 = load %struct.ARP_IncomingRequest*, %struct.ARP_IncomingRequest** %5, align 8
  %100 = getelementptr inbounds %struct.ARP_IncomingRequest, %struct.ARP_IncomingRequest* %99, i32 0, i32 2
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = icmp ne i32 %102, 2048
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  br label %237

105:                                              ; preds = %98
  %106 = load %struct.ARP_IncomingRequest*, %struct.ARP_IncomingRequest** %5, align 8
  %107 = getelementptr inbounds %struct.ARP_IncomingRequest, %struct.ARP_IncomingRequest* %106, i32 0, i32 1
  %108 = load i8, i8* %107, align 4
  %109 = zext i8 %108 to i32
  %110 = icmp ne i32 %109, 1
  br i1 %110, label %111, label %118

111:                                              ; preds = %105
  %112 = load %struct.ARP_IncomingRequest*, %struct.ARP_IncomingRequest** %5, align 8
  %113 = getelementptr inbounds %struct.ARP_IncomingRequest, %struct.ARP_IncomingRequest* %112, i32 0, i32 1
  %114 = load i8, i8* %113, align 4
  %115 = zext i8 %114 to i32
  %116 = icmp ne i32 %115, 6
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  br label %237

118:                                              ; preds = %111, %105
  %119 = load %struct.ARP_IncomingRequest*, %struct.ARP_IncomingRequest** %5, align 8
  %120 = getelementptr inbounds %struct.ARP_IncomingRequest, %struct.ARP_IncomingRequest* %119, i32 0, i32 3
  %121 = load i8, i8* %120, align 2
  %122 = zext i8 %121 to i32
  %123 = mul nsw i32 2, %122
  %124 = load %struct.ARP_IncomingRequest*, %struct.ARP_IncomingRequest** %5, align 8
  %125 = getelementptr inbounds %struct.ARP_IncomingRequest, %struct.ARP_IncomingRequest* %124, i32 0, i32 4
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = mul nsw i32 2, %127
  %129 = add nsw i32 %123, %128
  %130 = call i32 @VERIFY_REMAINING(i32 %129)
  %131 = load i8*, i8** %6, align 8
  %132 = load i32, i32* %7, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  %135 = load %struct.ARP_IncomingRequest*, %struct.ARP_IncomingRequest** %5, align 8
  %136 = getelementptr inbounds %struct.ARP_IncomingRequest, %struct.ARP_IncomingRequest* %135, i32 0, i32 6
  store i8* %134, i8** %136, align 8
  %137 = load %struct.ARP_IncomingRequest*, %struct.ARP_IncomingRequest** %5, align 8
  %138 = getelementptr inbounds %struct.ARP_IncomingRequest, %struct.ARP_IncomingRequest* %137, i32 0, i32 3
  %139 = load i8, i8* %138, align 2
  %140 = zext i8 %139 to i32
  %141 = load i32, i32* %7, align 4
  %142 = add i32 %141, %140
  store i32 %142, i32* %7, align 4
  %143 = load i8*, i8** %6, align 8
  %144 = load i32, i32* %7, align 4
  %145 = add i32 %144, 0
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %143, i64 %146
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i32
  %150 = shl i32 %149, 24
  %151 = load i8*, i8** %6, align 8
  %152 = load i32, i32* %7, align 4
  %153 = add i32 %152, 1
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %151, i64 %154
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  %158 = shl i32 %157, 16
  %159 = or i32 %150, %158
  %160 = load i8*, i8** %6, align 8
  %161 = load i32, i32* %7, align 4
  %162 = add i32 %161, 2
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds i8, i8* %160, i64 %163
  %165 = load i8, i8* %164, align 1
  %166 = zext i8 %165 to i32
  %167 = shl i32 %166, 8
  %168 = or i32 %159, %167
  %169 = load i8*, i8** %6, align 8
  %170 = load i32, i32* %7, align 4
  %171 = add i32 %170, 3
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds i8, i8* %169, i64 %172
  %174 = load i8, i8* %173, align 1
  %175 = zext i8 %174 to i32
  %176 = or i32 %168, %175
  %177 = trunc i32 %176 to i8
  %178 = load %struct.ARP_IncomingRequest*, %struct.ARP_IncomingRequest** %5, align 8
  %179 = getelementptr inbounds %struct.ARP_IncomingRequest, %struct.ARP_IncomingRequest* %178, i32 0, i32 7
  store i8 %177, i8* %179, align 8
  %180 = load %struct.ARP_IncomingRequest*, %struct.ARP_IncomingRequest** %5, align 8
  %181 = getelementptr inbounds %struct.ARP_IncomingRequest, %struct.ARP_IncomingRequest* %180, i32 0, i32 4
  %182 = load i8, i8* %181, align 1
  %183 = zext i8 %182 to i32
  %184 = load i32, i32* %7, align 4
  %185 = add i32 %184, %183
  store i32 %185, i32* %7, align 4
  %186 = load i8*, i8** %6, align 8
  %187 = load i32, i32* %7, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds i8, i8* %186, i64 %188
  %190 = load %struct.ARP_IncomingRequest*, %struct.ARP_IncomingRequest** %5, align 8
  %191 = getelementptr inbounds %struct.ARP_IncomingRequest, %struct.ARP_IncomingRequest* %190, i32 0, i32 8
  store i8* %189, i8** %191, align 8
  %192 = load %struct.ARP_IncomingRequest*, %struct.ARP_IncomingRequest** %5, align 8
  %193 = getelementptr inbounds %struct.ARP_IncomingRequest, %struct.ARP_IncomingRequest* %192, i32 0, i32 3
  %194 = load i8, i8* %193, align 2
  %195 = zext i8 %194 to i32
  %196 = load i32, i32* %7, align 4
  %197 = add i32 %196, %195
  store i32 %197, i32* %7, align 4
  %198 = load i8*, i8** %6, align 8
  %199 = load i32, i32* %7, align 4
  %200 = add i32 %199, 0
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds i8, i8* %198, i64 %201
  %203 = load i8, i8* %202, align 1
  %204 = zext i8 %203 to i32
  %205 = shl i32 %204, 24
  %206 = load i8*, i8** %6, align 8
  %207 = load i32, i32* %7, align 4
  %208 = add i32 %207, 1
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds i8, i8* %206, i64 %209
  %211 = load i8, i8* %210, align 1
  %212 = zext i8 %211 to i32
  %213 = shl i32 %212, 16
  %214 = or i32 %205, %213
  %215 = load i8*, i8** %6, align 8
  %216 = load i32, i32* %7, align 4
  %217 = add i32 %216, 2
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds i8, i8* %215, i64 %218
  %220 = load i8, i8* %219, align 1
  %221 = zext i8 %220 to i32
  %222 = shl i32 %221, 8
  %223 = or i32 %214, %222
  %224 = load i8*, i8** %6, align 8
  %225 = load i32, i32* %7, align 4
  %226 = add i32 %225, 3
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds i8, i8* %224, i64 %227
  %229 = load i8, i8* %228, align 1
  %230 = zext i8 %229 to i32
  %231 = or i32 %223, %230
  %232 = trunc i32 %231 to i8
  %233 = load %struct.ARP_IncomingRequest*, %struct.ARP_IncomingRequest** %5, align 8
  %234 = getelementptr inbounds %struct.ARP_IncomingRequest, %struct.ARP_IncomingRequest* %233, i32 0, i32 9
  store i8 %232, i8* %234, align 8
  %235 = load %struct.ARP_IncomingRequest*, %struct.ARP_IncomingRequest** %5, align 8
  %236 = getelementptr inbounds %struct.ARP_IncomingRequest, %struct.ARP_IncomingRequest* %235, i32 0, i32 0
  store i32 1, i32* %236, align 8
  br label %237

237:                                              ; preds = %118, %117, %104, %97
  ret void
}

declare dso_local i32 @VERIFY_REMAINING(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
