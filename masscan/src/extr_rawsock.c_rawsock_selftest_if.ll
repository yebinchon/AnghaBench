; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_rawsock.c_rawsock_selftest_if.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_rawsock.c_rawsock_selftest_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Adapter = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"get-default-if: returned err %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"if = %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"get-ip: returned err\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"ip = %u.%u.%u.%u\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"get-adapter-mac: returned err=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"mac = %02x-%02x-%02x-%02x-%02x-%02x\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"get-default-gateway: returned err=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"gateway = %u.%u.%u.%u\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"if:%s: failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"pcap = opened\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"gateway = %02x-%02x-%02x-%02x-%02x-%02x\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"gateway = [failed to ARP address]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rawsock_selftest_if(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [6 x i8], align 1
  %8 = alloca %struct.Adapter*, align 8
  %9 = alloca [246 x i8], align 16
  %10 = alloca [6 x i8], align 1
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %11 = bitcast [6 x i8]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %11, i8 0, i64 6, i1 false)
  %12 = load i8*, i8** %3, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %14, %1
  %21 = getelementptr inbounds [246 x i8], [246 x i8]* %9, i64 0, i64 0
  %22 = call i32 @rawsock_get_default_interface(i8* %21, i32 246)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* @stderr, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %27)
  store i32 -1, i32* %2, align 4
  br label %163

29:                                               ; preds = %20
  %30 = getelementptr inbounds [246 x i8], [246 x i8]* %9, i64 0, i64 0
  store i8* %30, i8** %3, align 8
  br label %31

31:                                               ; preds = %29, %14
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @rawsock_get_adapter_ip(i8* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* @stderr, align 4
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %59

41:                                               ; preds = %31
  %42 = load i32, i32* %5, align 4
  %43 = lshr i32 %42, 24
  %44 = trunc i32 %43 to i8
  %45 = zext i8 %44 to i32
  %46 = load i32, i32* %5, align 4
  %47 = lshr i32 %46, 16
  %48 = trunc i32 %47 to i8
  %49 = zext i8 %48 to i32
  %50 = load i32, i32* %5, align 4
  %51 = lshr i32 %50, 8
  %52 = trunc i32 %51 to i8
  %53 = zext i8 %52 to i32
  %54 = load i32, i32* %5, align 4
  %55 = lshr i32 %54, 0
  %56 = trunc i32 %55 to i8
  %57 = zext i8 %56 to i32
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %45, i32 %49, i32 %53, i32 %57)
  br label %59

59:                                               ; preds = %41, %38
  %60 = load i8*, i8** %3, align 8
  %61 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %62 = call i32 @rawsock_get_adapter_mac(i8* %60, i8* %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load i32, i32* @stderr, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call i32 (i32, i8*, ...) @fprintf(i32 %66, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %67)
  br label %89

69:                                               ; preds = %59
  %70 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 1
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 2
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 3
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 4
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 5
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %72, i32 %75, i32 %78, i32 %81, i32 %84, i32 %87)
  br label %89

89:                                               ; preds = %69, %65
  %90 = load i8*, i8** %3, align 8
  %91 = call i32 @rawsock_get_default_gateway(i8* %90, i32* %6)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load i32, i32* @stderr, align 4
  %96 = load i32, i32* %4, align 4
  %97 = call i32 (i32, i8*, ...) @fprintf(i32 %95, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %96)
  br label %162

98:                                               ; preds = %89
  %99 = load i32, i32* %6, align 4
  %100 = lshr i32 %99, 24
  %101 = trunc i32 %100 to i8
  %102 = zext i8 %101 to i32
  %103 = load i32, i32* %6, align 4
  %104 = lshr i32 %103, 16
  %105 = trunc i32 %104 to i8
  %106 = zext i8 %105 to i32
  %107 = load i32, i32* %6, align 4
  %108 = lshr i32 %107, 8
  %109 = trunc i32 %108 to i8
  %110 = zext i8 %109 to i32
  %111 = load i32, i32* %6, align 4
  %112 = lshr i32 %111, 0
  %113 = trunc i32 %112 to i8
  %114 = zext i8 %113 to i32
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %102, i32 %106, i32 %110, i32 %114)
  %116 = load i8*, i8** %3, align 8
  %117 = call %struct.Adapter* @rawsock_init_adapter(i8* %116, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  store %struct.Adapter* %117, %struct.Adapter** %8, align 8
  %118 = load %struct.Adapter*, %struct.Adapter** %8, align 8
  %119 = icmp eq %struct.Adapter* %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %98
  %121 = load i8*, i8** %3, align 8
  %122 = call i32 @LOG(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* %121)
  store i32 -1, i32* %2, align 4
  br label %163

123:                                              ; preds = %98
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  br label %125

125:                                              ; preds = %123
  %126 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %127 = call i32 @memset(i8* %126, i32 0, i32 6)
  %128 = load %struct.Adapter*, %struct.Adapter** %8, align 8
  %129 = load i32, i32* %5, align 4
  %130 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %131 = load i32, i32* %6, align 4
  %132 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %133 = call i32 @arp_resolve_sync(%struct.Adapter* %128, i32 %129, i8* %130, i32 %131, i8* %132)
  %134 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %135 = call i64 @memcmp(i8* %134, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 6)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %157

137:                                              ; preds = %125
  %138 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i32
  %141 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 1
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i32
  %144 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 2
  %145 = load i8, i8* %144, align 1
  %146 = zext i8 %145 to i32
  %147 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 3
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i32
  %150 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 4
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 5
  %154 = load i8, i8* %153, align 1
  %155 = zext i8 %154 to i32
  %156 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0), i32 %140, i32 %143, i32 %146, i32 %149, i32 %152, i32 %155)
  br label %159

157:                                              ; preds = %125
  %158 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  br label %159

159:                                              ; preds = %157, %137
  %160 = load %struct.Adapter*, %struct.Adapter** %8, align 8
  %161 = call i32 @rawsock_close_adapter(%struct.Adapter* %160)
  br label %162

162:                                              ; preds = %159, %94
  store i32 0, i32* %2, align 4
  br label %163

163:                                              ; preds = %162, %120, %25
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @rawsock_get_default_interface(i8*, i32) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @rawsock_get_adapter_ip(i8*) #2

declare dso_local i32 @rawsock_get_adapter_mac(i8*, i8*) #2

declare dso_local i32 @rawsock_get_default_gateway(i8*, i32*) #2

declare dso_local %struct.Adapter* @rawsock_init_adapter(i8*, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @LOG(i32, i8*, i8*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @arp_resolve_sync(%struct.Adapter*, i32, i8*, i32, i8*) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @rawsock_close_adapter(%struct.Adapter*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
