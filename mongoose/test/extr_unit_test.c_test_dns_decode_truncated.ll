; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_dns_decode_truncated.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_dns_decode_truncated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_dns_message = type { i32, i32, %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record* }
%struct.mg_dns_resource_record = type { i32, i32, i32 }
%struct.in_addr = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"go.cesanta.com\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"ghs.googlehosted.com\00", align 1
@__const.test_dns_decode_truncated.src = private unnamed_addr constant [79 x i8] c"\A1\00\81\80\00\01\00\02\00\00\00\00\02go\07cesanta\03com\00\00\01\00\01\C0\0C\00\05\00\01\00\00\09R\00\13\03ghs\0Cgooglehosted\C0\17\C0,\00\01\00\01\00\00\01+\00\04J}\88y", align 16
@.str.2 = private unnamed_addr constant [15 x i8] c"74.125.136.121\00", align 1
@MG_DNS_A_RECORD = common dso_local global i32 0, align 4
@MG_DNS_CNAME_RECORD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"GOT %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Should have failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @test_dns_decode_truncated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @test_dns_decode_truncated() #0 {
  %1 = alloca %struct.mg_dns_message, align 8
  %2 = alloca [256 x i8], align 16
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mg_dns_resource_record*, align 8
  %6 = alloca %struct.in_addr, align 8
  %7 = alloca %struct.in_addr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [79 x i8], align 16
  %11 = alloca i8*, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  %12 = bitcast [79 x i8]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 getelementptr inbounds ([79 x i8], [79 x i8]* @__const.test_dns_decode_truncated.src, i32 0, i32 0), i64 79, i1 false)
  store i8* null, i8** %11, align 8
  store i32 78, i32* %9, align 4
  br label %13

13:                                               ; preds = %179, %0
  %14 = load i32, i32* %9, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %182

16:                                               ; preds = %13
  %17 = load i8*, i8** %11, align 8
  %18 = call i32 @free(i8* %17)
  %19 = load i32, i32* %9, align 4
  %20 = call i64 @malloc(i32 %19)
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** %11, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = getelementptr inbounds [79 x i8], [79 x i8]* %10, i64 0, i64 0
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @memcpy(i8* %22, i8* %23, i32 %24)
  %26 = load i8*, i8** %11, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i64 @mg_parse_dns(i8* %26, i32 %27, %struct.mg_dns_message* %1)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %16
  br label %179

31:                                               ; preds = %16
  %32 = getelementptr inbounds %struct.mg_dns_message, %struct.mg_dns_message* %1, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  br label %179

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.mg_dns_message, %struct.mg_dns_message* %1, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  br label %179

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.mg_dns_message, %struct.mg_dns_message* %1, i32 0, i32 3
  %43 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %42, align 8
  %44 = getelementptr inbounds %struct.mg_dns_resource_record, %struct.mg_dns_resource_record* %43, i64 0
  store %struct.mg_dns_resource_record* %44, %struct.mg_dns_resource_record** %5, align 8
  %45 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %5, align 8
  %46 = getelementptr inbounds %struct.mg_dns_resource_record, %struct.mg_dns_resource_record* %45, i32 0, i32 1
  %47 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %48 = call i64 @mg_dns_uncompress_name(%struct.mg_dns_message* %1, i32* %46, i8* %47, i32 256)
  %49 = load i8*, i8** %3, align 8
  %50 = call i64 @strlen(i8* %49)
  %51 = icmp eq i64 %48, %50
  br i1 %51, label %53, label %52

52:                                               ; preds = %41
  br label %179

53:                                               ; preds = %41
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %55 = load i8*, i8** %3, align 8
  %56 = load i8*, i8** %3, align 8
  %57 = call i64 @strlen(i8* %56)
  %58 = call i64 @strncmp(i8* %54, i8* %55, i64 %57)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %53
  br label %179

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.mg_dns_message, %struct.mg_dns_message* %1, i32 0, i32 2
  %63 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %62, align 8
  %64 = getelementptr inbounds %struct.mg_dns_resource_record, %struct.mg_dns_resource_record* %63, i64 0
  store %struct.mg_dns_resource_record* %64, %struct.mg_dns_resource_record** %5, align 8
  %65 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %5, align 8
  %66 = getelementptr inbounds %struct.mg_dns_resource_record, %struct.mg_dns_resource_record* %65, i32 0, i32 1
  %67 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %68 = call i64 @mg_dns_uncompress_name(%struct.mg_dns_message* %1, i32* %66, i8* %67, i32 256)
  %69 = load i8*, i8** %3, align 8
  %70 = call i64 @strlen(i8* %69)
  %71 = icmp eq i64 %68, %70
  br i1 %71, label %73, label %72

72:                                               ; preds = %61
  br label %179

73:                                               ; preds = %61
  %74 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %75 = load i8*, i8** %3, align 8
  %76 = load i8*, i8** %3, align 8
  %77 = call i64 @strlen(i8* %76)
  %78 = call i64 @strncmp(i8* %74, i8* %75, i64 %77)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %73
  br label %179

81:                                               ; preds = %73
  %82 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %5, align 8
  %83 = getelementptr inbounds %struct.mg_dns_resource_record, %struct.mg_dns_resource_record* %82, i32 0, i32 2
  %84 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %85 = call i64 @mg_dns_uncompress_name(%struct.mg_dns_message* %1, i32* %83, i8* %84, i32 256)
  %86 = load i8*, i8** %4, align 8
  %87 = call i64 @strlen(i8* %86)
  %88 = icmp eq i64 %85, %87
  br i1 %88, label %90, label %89

89:                                               ; preds = %81
  br label %179

90:                                               ; preds = %81
  %91 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %92 = load i8*, i8** %4, align 8
  %93 = load i8*, i8** %4, align 8
  %94 = call i64 @strlen(i8* %93)
  %95 = call i64 @strncmp(i8* %91, i8* %92, i64 %94)
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %90
  br label %179

98:                                               ; preds = %90
  %99 = getelementptr inbounds %struct.mg_dns_message, %struct.mg_dns_message* %1, i32 0, i32 2
  %100 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %99, align 8
  %101 = getelementptr inbounds %struct.mg_dns_resource_record, %struct.mg_dns_resource_record* %100, i64 1
  store %struct.mg_dns_resource_record* %101, %struct.mg_dns_resource_record** %5, align 8
  %102 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %5, align 8
  %103 = getelementptr inbounds %struct.mg_dns_resource_record, %struct.mg_dns_resource_record* %102, i32 0, i32 1
  %104 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %105 = call i64 @mg_dns_uncompress_name(%struct.mg_dns_message* %1, i32* %103, i8* %104, i32 256)
  %106 = load i8*, i8** %4, align 8
  %107 = call i64 @strlen(i8* %106)
  %108 = icmp eq i64 %105, %107
  br i1 %108, label %110, label %109

109:                                              ; preds = %98
  br label %179

110:                                              ; preds = %98
  %111 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %112 = load i8*, i8** %4, align 8
  %113 = load i8*, i8** %4, align 8
  %114 = call i64 @strlen(i8* %113)
  %115 = call i64 @strncmp(i8* %111, i8* %112, i64 %114)
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %110
  br label %179

118:                                              ; preds = %110
  %119 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %5, align 8
  %120 = call i32 @mg_dns_parse_record_data(%struct.mg_dns_message* %1, %struct.mg_dns_resource_record* %119, %struct.in_addr* %6, i32 8)
  %121 = icmp eq i32 %120, -1
  br i1 %121, label %123, label %122

122:                                              ; preds = %118
  br label %179

123:                                              ; preds = %118
  %124 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %5, align 8
  %125 = call i32 @mg_dns_parse_record_data(%struct.mg_dns_message* %1, %struct.mg_dns_resource_record* %124, %struct.in_addr* %7, i32 8)
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %123
  br label %179

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %7, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = call i64 @inet_addr(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %134, label %133

133:                                              ; preds = %128
  br label %179

134:                                              ; preds = %128
  store i32 0, i32* %8, align 4
  store %struct.mg_dns_resource_record* null, %struct.mg_dns_resource_record** %5, align 8
  br label %135

135:                                              ; preds = %140, %134
  %136 = load i32, i32* @MG_DNS_A_RECORD, align 4
  %137 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %5, align 8
  %138 = call %struct.mg_dns_resource_record* @mg_dns_next_record(%struct.mg_dns_message* %1, i32 %136, %struct.mg_dns_resource_record* %137)
  store %struct.mg_dns_resource_record* %138, %struct.mg_dns_resource_record** %5, align 8
  %139 = icmp ne %struct.mg_dns_resource_record* %138, null
  br i1 %139, label %140, label %143

140:                                              ; preds = %135
  %141 = load i32, i32* %8, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %8, align 4
  br label %135

143:                                              ; preds = %135
  %144 = load i32, i32* %8, align 4
  %145 = icmp eq i32 %144, 1
  br i1 %145, label %147, label %146

146:                                              ; preds = %143
  br label %179

147:                                              ; preds = %143
  store i32 0, i32* %8, align 4
  store %struct.mg_dns_resource_record* null, %struct.mg_dns_resource_record** %5, align 8
  br label %148

148:                                              ; preds = %153, %147
  %149 = load i32, i32* @MG_DNS_CNAME_RECORD, align 4
  %150 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %5, align 8
  %151 = call %struct.mg_dns_resource_record* @mg_dns_next_record(%struct.mg_dns_message* %1, i32 %149, %struct.mg_dns_resource_record* %150)
  store %struct.mg_dns_resource_record* %151, %struct.mg_dns_resource_record** %5, align 8
  %152 = icmp ne %struct.mg_dns_resource_record* %151, null
  br i1 %152, label %153, label %156

153:                                              ; preds = %148
  %154 = load i32, i32* %8, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %8, align 4
  br label %148

156:                                              ; preds = %148
  %157 = load i32, i32* %8, align 4
  %158 = icmp eq i32 %157, 1
  br i1 %158, label %160, label %159

159:                                              ; preds = %156
  br label %179

160:                                              ; preds = %156
  %161 = load i32, i32* @MG_DNS_A_RECORD, align 4
  %162 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %5, align 8
  %163 = call %struct.mg_dns_resource_record* @mg_dns_next_record(%struct.mg_dns_message* %1, i32 %161, %struct.mg_dns_resource_record* %162)
  store %struct.mg_dns_resource_record* %163, %struct.mg_dns_resource_record** %5, align 8
  %164 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %5, align 8
  %165 = icmp ne %struct.mg_dns_resource_record* %164, null
  br i1 %165, label %167, label %166

166:                                              ; preds = %160
  br label %179

167:                                              ; preds = %160
  %168 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %5, align 8
  %169 = bitcast %struct.mg_dns_resource_record* %168 to i8*
  %170 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %169)
  %171 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %5, align 8
  %172 = getelementptr inbounds %struct.mg_dns_resource_record, %struct.mg_dns_resource_record* %171, i32 0, i32 0
  store i32 255, i32* %172, align 4
  %173 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %5, align 8
  %174 = call i32 @mg_dns_parse_record_data(%struct.mg_dns_message* %1, %struct.mg_dns_resource_record* %173, %struct.in_addr* %7, i32 8)
  %175 = icmp eq i32 %174, -1
  br i1 %175, label %177, label %176

176:                                              ; preds = %167
  br label %179

177:                                              ; preds = %167
  %178 = call i32 @ASSERT(i32 0)
  br label %179

179:                                              ; preds = %177, %176, %166, %159, %146, %133, %127, %122, %117, %109, %97, %89, %80, %72, %60, %52, %40, %35, %30
  %180 = load i32, i32* %9, align 4
  %181 = add nsw i32 %180, -1
  store i32 %181, i32* %9, align 4
  br label %13

182:                                              ; preds = %13
  %183 = load i8*, i8** %11, align 8
  %184 = call i32 @free(i8* %183)
  ret i8* null
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @free(i8*) #2

declare dso_local i64 @malloc(i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i64 @mg_parse_dns(i8*, i32, %struct.mg_dns_message*) #2

declare dso_local i64 @mg_dns_uncompress_name(%struct.mg_dns_message*, i32*, i8*, i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @strncmp(i8*, i8*, i64) #2

declare dso_local i32 @mg_dns_parse_record_data(%struct.mg_dns_message*, %struct.mg_dns_resource_record*, %struct.in_addr*, i32) #2

declare dso_local i64 @inet_addr(i8*) #2

declare dso_local %struct.mg_dns_resource_record* @mg_dns_next_record(%struct.mg_dns_message*, i32, %struct.mg_dns_resource_record*) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i32 @ASSERT(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
