; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_dns_decode.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_dns_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_dns_message = type { i32, i32, %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record* }
%struct.mg_dns_resource_record = type { i32, i32, i32 }
%struct.in_addr = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"go.cesanta.com\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"ghs.googlehosted.com\00", align 1
@__const.test_dns_decode.pkt = private unnamed_addr constant [79 x i8] c"\A1\00\81\80\00\01\00\02\00\00\00\00\02go\07cesanta\03com\00\00\01\00\01\C0\0C\00\05\00\01\00\00\09R\00\13\03ghs\0Cgooglehosted\C0\17\C0,\00\01\00\01\00\00\01+\00\04J}\88y", align 16
@.str.2 = private unnamed_addr constant [15 x i8] c"74.125.136.121\00", align 1
@MG_DNS_A_RECORD = common dso_local global i32 0, align 4
@MG_DNS_CNAME_RECORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @test_dns_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @test_dns_decode() #0 {
  %1 = alloca %struct.mg_dns_message, align 8
  %2 = alloca [256 x i8], align 16
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mg_dns_resource_record*, align 8
  %6 = alloca %struct.in_addr, align 4
  %7 = alloca %struct.in_addr, align 4
  %8 = alloca i32, align 4
  %9 = alloca [79 x i8], align 16
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  %10 = bitcast [79 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 getelementptr inbounds ([79 x i8], [79 x i8]* @__const.test_dns_decode.pkt, i32 0, i32 0), i64 79, i1 false)
  %11 = getelementptr inbounds [79 x i8], [79 x i8]* %9, i64 0, i64 0
  %12 = call i32 @mg_parse_dns(i8* %11, i32 79, %struct.mg_dns_message* %1)
  %13 = call i32 @ASSERT_EQ(i32 %12, i32 0)
  %14 = getelementptr inbounds %struct.mg_dns_message, %struct.mg_dns_message* %1, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @ASSERT_EQ(i32 %15, i32 1)
  %17 = getelementptr inbounds %struct.mg_dns_message, %struct.mg_dns_message* %1, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ASSERT_EQ(i32 %18, i32 2)
  %20 = getelementptr inbounds %struct.mg_dns_message, %struct.mg_dns_message* %1, i32 0, i32 3
  %21 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %20, align 8
  %22 = getelementptr inbounds %struct.mg_dns_resource_record, %struct.mg_dns_resource_record* %21, i64 0
  store %struct.mg_dns_resource_record* %22, %struct.mg_dns_resource_record** %5, align 8
  %23 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %5, align 8
  %24 = getelementptr inbounds %struct.mg_dns_resource_record, %struct.mg_dns_resource_record* %23, i32 0, i32 1
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %26 = call i32 @mg_dns_uncompress_name(%struct.mg_dns_message* %1, i32* %24, i8* %25, i32 256)
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @strlen(i8* %27)
  %29 = call i32 @ASSERT_EQ(i32 %26, i32 %28)
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %31 = load i8*, i8** %3, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @strlen(i8* %32)
  %34 = call i32 @strncmp(i8* %30, i8* %31, i32 %33)
  %35 = call i32 @ASSERT_EQ(i32 %34, i32 0)
  %36 = getelementptr inbounds %struct.mg_dns_message, %struct.mg_dns_message* %1, i32 0, i32 2
  %37 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %36, align 8
  %38 = getelementptr inbounds %struct.mg_dns_resource_record, %struct.mg_dns_resource_record* %37, i64 0
  store %struct.mg_dns_resource_record* %38, %struct.mg_dns_resource_record** %5, align 8
  %39 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %5, align 8
  %40 = getelementptr inbounds %struct.mg_dns_resource_record, %struct.mg_dns_resource_record* %39, i32 0, i32 1
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %42 = call i32 @mg_dns_uncompress_name(%struct.mg_dns_message* %1, i32* %40, i8* %41, i32 256)
  %43 = load i8*, i8** %3, align 8
  %44 = call i32 @strlen(i8* %43)
  %45 = call i32 @ASSERT_EQ(i32 %42, i32 %44)
  %46 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %47 = load i8*, i8** %3, align 8
  %48 = load i8*, i8** %3, align 8
  %49 = call i32 @strlen(i8* %48)
  %50 = call i32 @strncmp(i8* %46, i8* %47, i32 %49)
  %51 = call i32 @ASSERT_EQ(i32 %50, i32 0)
  %52 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %5, align 8
  %53 = getelementptr inbounds %struct.mg_dns_resource_record, %struct.mg_dns_resource_record* %52, i32 0, i32 2
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %55 = call i32 @mg_dns_uncompress_name(%struct.mg_dns_message* %1, i32* %53, i8* %54, i32 256)
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 @strlen(i8* %56)
  %58 = call i32 @ASSERT_EQ(i32 %55, i32 %57)
  %59 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %60 = load i8*, i8** %4, align 8
  %61 = load i8*, i8** %4, align 8
  %62 = call i32 @strlen(i8* %61)
  %63 = call i32 @strncmp(i8* %59, i8* %60, i32 %62)
  %64 = call i32 @ASSERT_EQ(i32 %63, i32 0)
  %65 = getelementptr inbounds %struct.mg_dns_message, %struct.mg_dns_message* %1, i32 0, i32 2
  %66 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %65, align 8
  %67 = getelementptr inbounds %struct.mg_dns_resource_record, %struct.mg_dns_resource_record* %66, i64 1
  store %struct.mg_dns_resource_record* %67, %struct.mg_dns_resource_record** %5, align 8
  %68 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %5, align 8
  %69 = getelementptr inbounds %struct.mg_dns_resource_record, %struct.mg_dns_resource_record* %68, i32 0, i32 1
  %70 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %71 = call i32 @mg_dns_uncompress_name(%struct.mg_dns_message* %1, i32* %69, i8* %70, i32 256)
  %72 = load i8*, i8** %4, align 8
  %73 = call i32 @strlen(i8* %72)
  %74 = call i32 @ASSERT_EQ(i32 %71, i32 %73)
  %75 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %76 = load i8*, i8** %4, align 8
  %77 = load i8*, i8** %4, align 8
  %78 = call i32 @strlen(i8* %77)
  %79 = call i32 @strncmp(i8* %75, i8* %76, i32 %78)
  %80 = call i32 @ASSERT_EQ(i32 %79, i32 0)
  %81 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %5, align 8
  %82 = call i32 @mg_dns_parse_record_data(%struct.mg_dns_message* %1, %struct.mg_dns_resource_record* %81, %struct.in_addr* %6, i32 4)
  %83 = call i32 @ASSERT_EQ(i32 %82, i32 -1)
  %84 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %5, align 8
  %85 = call i32 @mg_dns_parse_record_data(%struct.mg_dns_message* %1, %struct.mg_dns_resource_record* %84, %struct.in_addr* %7, i32 4)
  %86 = call i32 @ASSERT_EQ(i32 %85, i32 0)
  %87 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %7, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @inet_addr(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %90 = call i32 @ASSERT_EQ(i32 %88, i32 %89)
  store i32 0, i32* %8, align 4
  store %struct.mg_dns_resource_record* null, %struct.mg_dns_resource_record** %5, align 8
  br label %91

91:                                               ; preds = %96, %0
  %92 = load i32, i32* @MG_DNS_A_RECORD, align 4
  %93 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %5, align 8
  %94 = call %struct.mg_dns_resource_record* @mg_dns_next_record(%struct.mg_dns_message* %1, i32 %92, %struct.mg_dns_resource_record* %93)
  store %struct.mg_dns_resource_record* %94, %struct.mg_dns_resource_record** %5, align 8
  %95 = icmp ne %struct.mg_dns_resource_record* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %8, align 4
  br label %91

99:                                               ; preds = %91
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @ASSERT_EQ(i32 %100, i32 1)
  store i32 0, i32* %8, align 4
  store %struct.mg_dns_resource_record* null, %struct.mg_dns_resource_record** %5, align 8
  br label %102

102:                                              ; preds = %107, %99
  %103 = load i32, i32* @MG_DNS_CNAME_RECORD, align 4
  %104 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %5, align 8
  %105 = call %struct.mg_dns_resource_record* @mg_dns_next_record(%struct.mg_dns_message* %1, i32 %103, %struct.mg_dns_resource_record* %104)
  store %struct.mg_dns_resource_record* %105, %struct.mg_dns_resource_record** %5, align 8
  %106 = icmp ne %struct.mg_dns_resource_record* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %8, align 4
  br label %102

110:                                              ; preds = %102
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @ASSERT_EQ(i32 %111, i32 1)
  %113 = load i32, i32* @MG_DNS_A_RECORD, align 4
  %114 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %5, align 8
  %115 = call %struct.mg_dns_resource_record* @mg_dns_next_record(%struct.mg_dns_message* %1, i32 %113, %struct.mg_dns_resource_record* %114)
  store %struct.mg_dns_resource_record* %115, %struct.mg_dns_resource_record** %5, align 8
  %116 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %5, align 8
  %117 = getelementptr inbounds %struct.mg_dns_resource_record, %struct.mg_dns_resource_record* %116, i32 0, i32 0
  store i32 255, i32* %117, align 4
  %118 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %5, align 8
  %119 = call i32 @mg_dns_parse_record_data(%struct.mg_dns_message* %1, %struct.mg_dns_resource_record* %118, %struct.in_addr* %7, i32 4)
  %120 = call i32 @ASSERT_EQ(i32 %119, i32 -1)
  ret i8* null
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ASSERT_EQ(i32, i32) #2

declare dso_local i32 @mg_parse_dns(i8*, i32, %struct.mg_dns_message*) #2

declare dso_local i32 @mg_dns_uncompress_name(%struct.mg_dns_message*, i32*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @mg_dns_parse_record_data(%struct.mg_dns_message*, %struct.mg_dns_resource_record*, %struct.in_addr*, i32) #2

declare dso_local i32 @inet_addr(i8*) #2

declare dso_local %struct.mg_dns_resource_record* @mg_dns_next_record(%struct.mg_dns_message*, i32, %struct.mg_dns_resource_record*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
