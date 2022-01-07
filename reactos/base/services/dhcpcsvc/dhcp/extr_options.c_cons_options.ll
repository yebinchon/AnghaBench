; ModuleID = '/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_options.c_cons_options.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_options.c_cons_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.dhcp_packet = type { i8* }
%struct.tree_cache = type { i32 }

@DHO_DHCP_MAX_MESSAGE_SIZE = common dso_local global i64 0, align 8
@DHCP_FIXED_LEN = common dso_local global i32 0, align 4
@DHO_DHCP_MESSAGE_TYPE = common dso_local global i8 0, align 1
@DHO_DHCP_SERVER_IDENTIFIER = common dso_local global i8 0, align 1
@DHO_DHCP_LEASE_TIME = common dso_local global i8 0, align 1
@DHO_DHCP_MESSAGE = common dso_local global i8 0, align 1
@DHO_DHCP_PARAMETER_REQUEST_LIST = common dso_local global i64 0, align 8
@dhcp_option_default_priority_list = common dso_local global i8* null, align 8
@sizeof_dhcp_option_default_priority_list = common dso_local global i32 0, align 4
@DHCP_OPTIONS_COOKIE = common dso_local global i8* null, align 8
@DHO_END = common dso_local global i8 0, align 1
@DHCP_FIXED_NON_UDP = common dso_local global i32 0, align 4
@DHO_DHCP_OPTION_OVERLOAD = common dso_local global i8 0, align 1
@DHCP_FILE_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cons_options(%struct.packet* %0, %struct.dhcp_packet* %1, i32 %2, %struct.tree_cache** %3) #0 {
  %5 = alloca %struct.packet*, align 8
  %6 = alloca %struct.dhcp_packet*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tree_cache**, align 8
  %9 = alloca [300 x i8], align 16
  %10 = alloca [4096 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.packet* %0, %struct.packet** %5, align 8
  store %struct.dhcp_packet* %1, %struct.dhcp_packet** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.tree_cache** %3, %struct.tree_cache*** %8, align 8
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %50, label %19

19:                                               ; preds = %4
  %20 = load %struct.packet*, %struct.packet** %5, align 8
  %21 = icmp ne %struct.packet* %20, null
  br i1 %21, label %22, label %50

22:                                               ; preds = %19
  %23 = load %struct.packet*, %struct.packet** %5, align 8
  %24 = getelementptr inbounds %struct.packet, %struct.packet* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i64, i64* @DHO_DHCP_MAX_MESSAGE_SIZE, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %50

31:                                               ; preds = %22
  %32 = load %struct.packet*, %struct.packet** %5, align 8
  %33 = getelementptr inbounds %struct.packet, %struct.packet* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i64, i64* @DHO_DHCP_MAX_MESSAGE_SIZE, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = icmp uge i64 %39, 4
  br i1 %40, label %41, label %50

41:                                               ; preds = %31
  %42 = load %struct.packet*, %struct.packet** %5, align 8
  %43 = getelementptr inbounds %struct.packet, %struct.packet* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i64, i64* @DHO_DHCP_MAX_MESSAGE_SIZE, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @getUShort(i8* %48)
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %41, %31, %22, %19, %4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @DHCP_FIXED_LEN, align 4
  %56 = sub nsw i32 %54, %55
  store i32 %56, i32* %12, align 4
  br label %60

57:                                               ; preds = %50
  %58 = load i32, i32* @DHCP_FIXED_LEN, align 4
  %59 = sub nsw i32 576, %58
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %57, %53
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = icmp ugt i64 %62, 4096
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i32 4096, i32* %12, align 4
  br label %65

65:                                               ; preds = %64, %60
  store i32 0, i32* %11, align 4
  %66 = load i8, i8* @DHO_DHCP_MESSAGE_TYPE, align 1
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %11, align 4
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds [300 x i8], [300 x i8]* %9, i64 0, i64 %69
  store i8 %66, i8* %70, align 1
  %71 = load i8, i8* @DHO_DHCP_SERVER_IDENTIFIER, align 1
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %11, align 4
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds [300 x i8], [300 x i8]* %9, i64 0, i64 %74
  store i8 %71, i8* %75, align 1
  %76 = load i8, i8* @DHO_DHCP_LEASE_TIME, align 1
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %11, align 4
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds [300 x i8], [300 x i8]* %9, i64 0, i64 %79
  store i8 %76, i8* %80, align 1
  %81 = load i8, i8* @DHO_DHCP_MESSAGE, align 1
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %11, align 4
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds [300 x i8], [300 x i8]* %9, i64 0, i64 %84
  store i8 %81, i8* %85, align 1
  %86 = load %struct.packet*, %struct.packet** %5, align 8
  %87 = icmp ne %struct.packet* %86, null
  br i1 %87, label %88, label %131

88:                                               ; preds = %65
  %89 = load %struct.packet*, %struct.packet** %5, align 8
  %90 = getelementptr inbounds %struct.packet, %struct.packet* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = load i64, i64* @DHO_DHCP_PARAMETER_REQUEST_LIST, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %131

97:                                               ; preds = %88
  %98 = load %struct.packet*, %struct.packet** %5, align 8
  %99 = getelementptr inbounds %struct.packet, %struct.packet* %98, i32 0, i32 0
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = load i64, i64* @DHO_DHCP_PARAMETER_REQUEST_LIST, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  store i32 %104, i32* %16, align 4
  %105 = load i32, i32* %16, align 4
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %105, %106
  %108 = sext i32 %107 to i64
  %109 = icmp ugt i64 %108, 300
  br i1 %109, label %110, label %115

110:                                              ; preds = %97
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = sub i64 300, %112
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %16, align 4
  br label %115

115:                                              ; preds = %110, %97
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [300 x i8], [300 x i8]* %9, i64 0, i64 %117
  %119 = load %struct.packet*, %struct.packet** %5, align 8
  %120 = getelementptr inbounds %struct.packet, %struct.packet* %119, i32 0, i32 0
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = load i64, i64* @DHO_DHCP_PARAMETER_REQUEST_LIST, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = load i32, i32* %16, align 4
  %127 = call i32 @memcpy(i8* %118, i8* %125, i32 %126)
  %128 = load i32, i32* %16, align 4
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %129, %128
  store i32 %130, i32* %11, align 4
  br label %141

131:                                              ; preds = %88, %65
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [300 x i8], [300 x i8]* %9, i64 0, i64 %133
  %135 = load i8*, i8** @dhcp_option_default_priority_list, align 8
  %136 = load i32, i32* @sizeof_dhcp_option_default_priority_list, align 4
  %137 = call i32 @memcpy(i8* %134, i8* %135, i32 %136)
  %138 = load i32, i32* @sizeof_dhcp_option_default_priority_list, align 4
  %139 = load i32, i32* %11, align 4
  %140 = add nsw i32 %139, %138
  store i32 %140, i32* %11, align 4
  br label %141

141:                                              ; preds = %131, %115
  %142 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %143 = load i32, i32* %12, align 4
  %144 = sub nsw i32 %143, 7
  %145 = load %struct.tree_cache**, %struct.tree_cache*** %8, align 8
  %146 = getelementptr inbounds [300 x i8], [300 x i8]* %9, i64 0, i64 0
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* %12, align 4
  %150 = call i32 @store_options(i8* %142, i32 %144, %struct.tree_cache** %145, i8* %146, i32 %147, i32 %148, i32 %149)
  store i32 %150, i32* %14, align 4
  %151 = load %struct.dhcp_packet*, %struct.dhcp_packet** %6, align 8
  %152 = getelementptr inbounds %struct.dhcp_packet, %struct.dhcp_packet* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = load i8*, i8** @DHCP_OPTIONS_COOKIE, align 8
  %155 = call i32 @memcpy(i8* %153, i8* %154, i32 4)
  store i32 4, i32* %13, align 4
  %156 = load i32, i32* %14, align 4
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* %13, align 4
  %159 = sub nsw i32 %157, %158
  %160 = icmp sle i32 %156, %159
  br i1 %160, label %161, label %190

161:                                              ; preds = %141
  %162 = load %struct.dhcp_packet*, %struct.dhcp_packet** %6, align 8
  %163 = getelementptr inbounds %struct.dhcp_packet, %struct.dhcp_packet* %162, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  %165 = load i32, i32* %13, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %164, i64 %166
  %168 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %169 = load i32, i32* %14, align 4
  %170 = call i32 @memcpy(i8* %167, i8* %168, i32 %169)
  %171 = load i32, i32* %14, align 4
  %172 = load i32, i32* %13, align 4
  %173 = add nsw i32 %172, %171
  store i32 %173, i32* %13, align 4
  %174 = load i32, i32* %13, align 4
  %175 = load i32, i32* %12, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %186

177:                                              ; preds = %161
  %178 = load i8, i8* @DHO_END, align 1
  %179 = load %struct.dhcp_packet*, %struct.dhcp_packet** %6, align 8
  %180 = getelementptr inbounds %struct.dhcp_packet, %struct.dhcp_packet* %179, i32 0, i32 0
  %181 = load i8*, i8** %180, align 8
  %182 = load i32, i32* %13, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %13, align 4
  %184 = sext i32 %182 to i64
  %185 = getelementptr inbounds i8, i8* %181, i64 %184
  store i8 %178, i8* %185, align 1
  br label %186

186:                                              ; preds = %177, %161
  %187 = load i32, i32* @DHCP_FIXED_NON_UDP, align 4
  %188 = load i32, i32* %13, align 4
  %189 = add nsw i32 %187, %188
  store i32 %189, i32* %15, align 4
  br label %244

190:                                              ; preds = %141
  %191 = load i8, i8* @DHO_DHCP_OPTION_OVERLOAD, align 1
  %192 = load %struct.dhcp_packet*, %struct.dhcp_packet** %6, align 8
  %193 = getelementptr inbounds %struct.dhcp_packet, %struct.dhcp_packet* %192, i32 0, i32 0
  %194 = load i8*, i8** %193, align 8
  %195 = load i32, i32* %13, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %13, align 4
  %197 = sext i32 %195 to i64
  %198 = getelementptr inbounds i8, i8* %194, i64 %197
  store i8 %191, i8* %198, align 1
  %199 = load %struct.dhcp_packet*, %struct.dhcp_packet** %6, align 8
  %200 = getelementptr inbounds %struct.dhcp_packet, %struct.dhcp_packet* %199, i32 0, i32 0
  %201 = load i8*, i8** %200, align 8
  %202 = load i32, i32* %13, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %13, align 4
  %204 = sext i32 %202 to i64
  %205 = getelementptr inbounds i8, i8* %201, i64 %204
  store i8 1, i8* %205, align 1
  %206 = load i32, i32* %14, align 4
  %207 = load i32, i32* %12, align 4
  %208 = load i32, i32* %13, align 4
  %209 = sub nsw i32 %207, %208
  %210 = load i32, i32* @DHCP_FILE_LEN, align 4
  %211 = add nsw i32 %209, %210
  %212 = icmp sgt i32 %206, %211
  br i1 %212, label %213, label %221

213:                                              ; preds = %190
  %214 = load %struct.dhcp_packet*, %struct.dhcp_packet** %6, align 8
  %215 = getelementptr inbounds %struct.dhcp_packet, %struct.dhcp_packet* %214, i32 0, i32 0
  %216 = load i8*, i8** %215, align 8
  %217 = load i32, i32* %13, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %13, align 4
  %219 = sext i32 %217 to i64
  %220 = getelementptr inbounds i8, i8* %216, i64 %219
  store i8 3, i8* %220, align 1
  br label %229

221:                                              ; preds = %190
  %222 = load %struct.dhcp_packet*, %struct.dhcp_packet** %6, align 8
  %223 = getelementptr inbounds %struct.dhcp_packet, %struct.dhcp_packet* %222, i32 0, i32 0
  %224 = load i8*, i8** %223, align 8
  %225 = load i32, i32* %13, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %13, align 4
  %227 = sext i32 %225 to i64
  %228 = getelementptr inbounds i8, i8* %224, i64 %227
  store i8 1, i8* %228, align 1
  br label %229

229:                                              ; preds = %221, %213
  %230 = load %struct.dhcp_packet*, %struct.dhcp_packet** %6, align 8
  %231 = getelementptr inbounds %struct.dhcp_packet, %struct.dhcp_packet* %230, i32 0, i32 0
  %232 = load i8*, i8** %231, align 8
  %233 = load i32, i32* %13, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i8, i8* %232, i64 %234
  %236 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %237 = load i32, i32* %12, align 4
  %238 = load i32, i32* %13, align 4
  %239 = sub nsw i32 %237, %238
  %240 = call i32 @memcpy(i8* %235, i8* %236, i32 %239)
  %241 = load i32, i32* @DHCP_FIXED_NON_UDP, align 4
  %242 = load i32, i32* %13, align 4
  %243 = add nsw i32 %241, %242
  store i32 %243, i32* %15, align 4
  br label %244

244:                                              ; preds = %229, %186
  %245 = load i32, i32* %15, align 4
  ret i32 %245
}

declare dso_local i32 @getUShort(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @store_options(i8*, i32, %struct.tree_cache**, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
