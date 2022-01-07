; ModuleID = '/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_dhclient.c_write_client_lease.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_dhclient.c_write_client_lease.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }
%struct.interface_info = type { i8* }
%struct.client_lease = type { i8*, i8*, i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__*, i32, i64, i64 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i8* }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32 }

@write_client_lease.leases_written = internal global i32 0, align 4
@leaseFile = common dso_local global i64 0, align 8
@path_dhclient_db = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"can't create %s\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"lease {\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"  bootp;\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"  interface \22%s\22;\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"  fixed-address %s;\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"  filename \22%s\22;\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"  server-name \22%s\22;\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"  medium \22%s\22;\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"  option %s %s;\0A\00", align 1
@dhcp_options = common dso_local global %struct.TYPE_6__* null, align 8
@.str.10 = private unnamed_addr constant [37 x i8] c"  renew %d %d/%d/%d %02d:%02d:%02d;\0A\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"  rebind %d %d/%d/%d %02d:%02d:%02d;\0A\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"  expire %d %d/%d/%d %02d:%02d:%02d;\0A\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_client_lease(%struct.interface_info* %0, %struct.client_lease* %1, i32 %2) #0 {
  %4 = alloca %struct.interface_info*, align 8
  %5 = alloca %struct.client_lease*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tm*, align 8
  %8 = alloca i32, align 4
  store %struct.interface_info* %0, %struct.interface_info** %4, align 8
  store %struct.client_lease* %1, %struct.client_lease** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @write_client_lease.leases_written, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @write_client_lease.leases_written, align 4
  %14 = icmp sgt i32 %12, 20
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load %struct.interface_info*, %struct.interface_info** %4, align 8
  %17 = call i32 @rewrite_client_leases(%struct.interface_info* %16)
  store i32 0, i32* @write_client_lease.leases_written, align 4
  br label %18

18:                                               ; preds = %15, %11
  br label %19

19:                                               ; preds = %18, %3
  %20 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  %21 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %20, i32 0, i32 9
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %239

25:                                               ; preds = %19
  %26 = load i64, i64* @leaseFile, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* @path_dhclient_db, align 4
  %30 = call i64 @fopen(i32 %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 %30, i64* @leaseFile, align 8
  %31 = load i64, i64* @leaseFile, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @path_dhclient_db, align 4
  %35 = call i32 @error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %239

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %25
  %38 = load i64, i64* @leaseFile, align 8
  %39 = call i32 (i64, i8*, ...) @fprintf(i64 %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %40 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  %41 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %40, i32 0, i32 8
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i64, i64* @leaseFile, align 8
  %46 = call i32 (i64, i8*, ...) @fprintf(i64 %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %37
  %48 = load i64, i64* @leaseFile, align 8
  %49 = load %struct.interface_info*, %struct.interface_info** %4, align 8
  %50 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 (i64, i8*, ...) @fprintf(i64 %48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %51)
  %53 = load i64, i64* @leaseFile, align 8
  %54 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  %55 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 8
  %57 = call i8* @piaddr(i32 %56)
  %58 = call i32 (i64, i8*, ...) @fprintf(i64 %53, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %57)
  %59 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  %60 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %47
  %64 = load i64, i64* @leaseFile, align 8
  %65 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  %66 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 (i64, i8*, ...) @fprintf(i64 %64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %63, %47
  %70 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  %71 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load i64, i64* @leaseFile, align 8
  %76 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  %77 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 (i64, i8*, ...) @fprintf(i64 %75, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* %78)
  br label %80

80:                                               ; preds = %74, %69
  %81 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  %82 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %81, i32 0, i32 6
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = icmp ne %struct.TYPE_4__* %83, null
  br i1 %84, label %85, label %93

85:                                               ; preds = %80
  %86 = load i64, i64* @leaseFile, align 8
  %87 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  %88 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %87, i32 0, i32 6
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 (i64, i8*, ...) @fprintf(i64 %86, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* %91)
  br label %93

93:                                               ; preds = %85, %80
  store i32 0, i32* %8, align 4
  br label %94

94:                                               ; preds = %135, %93
  %95 = load i32, i32* %8, align 4
  %96 = icmp slt i32 %95, 256
  br i1 %96, label %97, label %138

97:                                               ; preds = %94
  %98 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  %99 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %98, i32 0, i32 5
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %134

107:                                              ; preds = %97
  %108 = load i64, i64* @leaseFile, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dhcp_options, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  %117 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %116, i32 0, i32 5
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  %125 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %124, i32 0, i32 5
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = call i8* @pretty_print_option(i32 %115, i32 %123, i64 %131, i32 1, i32 1)
  %133 = call i32 (i64, i8*, ...) @fprintf(i64 %108, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* %114, i8* %132)
  br label %134

134:                                              ; preds = %107, %97
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %8, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %8, align 4
  br label %94

138:                                              ; preds = %94
  %139 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  %140 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %139, i32 0, i32 4
  %141 = call %struct.tm* @gmtime(i32* %140)
  store %struct.tm* %141, %struct.tm** %7, align 8
  %142 = load %struct.tm*, %struct.tm** %7, align 8
  %143 = icmp ne %struct.tm* %142, null
  br i1 %143, label %144, label %170

144:                                              ; preds = %138
  %145 = load i64, i64* @leaseFile, align 8
  %146 = load %struct.tm*, %struct.tm** %7, align 8
  %147 = getelementptr inbounds %struct.tm, %struct.tm* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.tm*, %struct.tm** %7, align 8
  %150 = getelementptr inbounds %struct.tm, %struct.tm* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, 1900
  %153 = load %struct.tm*, %struct.tm** %7, align 8
  %154 = getelementptr inbounds %struct.tm, %struct.tm* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, 1
  %157 = load %struct.tm*, %struct.tm** %7, align 8
  %158 = getelementptr inbounds %struct.tm, %struct.tm* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.tm*, %struct.tm** %7, align 8
  %161 = getelementptr inbounds %struct.tm, %struct.tm* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.tm*, %struct.tm** %7, align 8
  %164 = getelementptr inbounds %struct.tm, %struct.tm* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.tm*, %struct.tm** %7, align 8
  %167 = getelementptr inbounds %struct.tm, %struct.tm* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 4
  %169 = call i32 (i64, i8*, ...) @fprintf(i64 %145, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i32 %148, i32 %152, i32 %156, i32 %159, i32 %162, i32 %165, i32 %168)
  br label %170

170:                                              ; preds = %144, %138
  %171 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  %172 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %171, i32 0, i32 3
  %173 = call %struct.tm* @gmtime(i32* %172)
  store %struct.tm* %173, %struct.tm** %7, align 8
  %174 = load %struct.tm*, %struct.tm** %7, align 8
  %175 = icmp ne %struct.tm* %174, null
  br i1 %175, label %176, label %202

176:                                              ; preds = %170
  %177 = load i64, i64* @leaseFile, align 8
  %178 = load %struct.tm*, %struct.tm** %7, align 8
  %179 = getelementptr inbounds %struct.tm, %struct.tm* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.tm*, %struct.tm** %7, align 8
  %182 = getelementptr inbounds %struct.tm, %struct.tm* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = add nsw i32 %183, 1900
  %185 = load %struct.tm*, %struct.tm** %7, align 8
  %186 = getelementptr inbounds %struct.tm, %struct.tm* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %187, 1
  %189 = load %struct.tm*, %struct.tm** %7, align 8
  %190 = getelementptr inbounds %struct.tm, %struct.tm* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.tm*, %struct.tm** %7, align 8
  %193 = getelementptr inbounds %struct.tm, %struct.tm* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.tm*, %struct.tm** %7, align 8
  %196 = getelementptr inbounds %struct.tm, %struct.tm* %195, i32 0, i32 5
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.tm*, %struct.tm** %7, align 8
  %199 = getelementptr inbounds %struct.tm, %struct.tm* %198, i32 0, i32 6
  %200 = load i32, i32* %199, align 4
  %201 = call i32 (i64, i8*, ...) @fprintf(i64 %177, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), i32 %180, i32 %184, i32 %188, i32 %191, i32 %194, i32 %197, i32 %200)
  br label %202

202:                                              ; preds = %176, %170
  %203 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  %204 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %203, i32 0, i32 2
  %205 = call %struct.tm* @gmtime(i32* %204)
  store %struct.tm* %205, %struct.tm** %7, align 8
  %206 = load %struct.tm*, %struct.tm** %7, align 8
  %207 = icmp ne %struct.tm* %206, null
  br i1 %207, label %208, label %234

208:                                              ; preds = %202
  %209 = load i64, i64* @leaseFile, align 8
  %210 = load %struct.tm*, %struct.tm** %7, align 8
  %211 = getelementptr inbounds %struct.tm, %struct.tm* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.tm*, %struct.tm** %7, align 8
  %214 = getelementptr inbounds %struct.tm, %struct.tm* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = add nsw i32 %215, 1900
  %217 = load %struct.tm*, %struct.tm** %7, align 8
  %218 = getelementptr inbounds %struct.tm, %struct.tm* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = add nsw i32 %219, 1
  %221 = load %struct.tm*, %struct.tm** %7, align 8
  %222 = getelementptr inbounds %struct.tm, %struct.tm* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.tm*, %struct.tm** %7, align 8
  %225 = getelementptr inbounds %struct.tm, %struct.tm* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.tm*, %struct.tm** %7, align 8
  %228 = getelementptr inbounds %struct.tm, %struct.tm* %227, i32 0, i32 5
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.tm*, %struct.tm** %7, align 8
  %231 = getelementptr inbounds %struct.tm, %struct.tm* %230, i32 0, i32 6
  %232 = load i32, i32* %231, align 4
  %233 = call i32 (i64, i8*, ...) @fprintf(i64 %209, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), i32 %212, i32 %216, i32 %220, i32 %223, i32 %226, i32 %229, i32 %232)
  br label %234

234:                                              ; preds = %208, %202
  %235 = load i64, i64* @leaseFile, align 8
  %236 = call i32 (i64, i8*, ...) @fprintf(i64 %235, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %237 = load i64, i64* @leaseFile, align 8
  %238 = call i32 @fflush(i64 %237)
  br label %239

239:                                              ; preds = %234, %33, %24
  ret void
}

declare dso_local i32 @rewrite_client_leases(%struct.interface_info*) #1

declare dso_local i64 @fopen(i32, i8*) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @fprintf(i64, i8*, ...) #1

declare dso_local i8* @piaddr(i32) #1

declare dso_local i8* @pretty_print_option(i32, i32, i64, i32, i32) #1

declare dso_local %struct.tm* @gmtime(i32*) #1

declare dso_local i32 @fflush(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
